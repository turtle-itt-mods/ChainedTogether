import Vino.Movement.Capabilities.Standard.CharacterMovementCapability;

class ChainedTogetherCapability : UCharacterMovementCapability {
    default CapabilityTags.Add(n"ChainedTogether");

	default TickGroupOrder = 0;

    AHazePlayerCharacter PlayerCharacter = nullptr;

    UFUNCTION(BlueprintOverride)
	void Setup(FCapabilitySetupParams SetupParams)
	{
        Super::Setup(SetupParams);
		PlayerCharacter = Cast<AHazePlayerCharacter>(Owner);
	}

    UFUNCTION(BlueprintOverride)
	EHazeNetworkActivation ShouldActivate() const
	{
		if(!Owner.HasControl()) return EHazeNetworkActivation::DontActivate; 
	    return EHazeNetworkActivation::ActivateLocal;
	}

    UFUNCTION(BlueprintOverride)
	void TickActive(float DeltaTime)
	{	
		AHazePlayerCharacter Other = nullptr;
        if(PlayerCharacter.IsCody()) {
            Other = Game::GetMay();
        } else {
            Other = Game::GetCody();
        }

        float dist = GetDist(PlayerCharacter.ActorLocation, Other.ActorLocation);

        float PullForce = (dist * dist * dist) / 500000 * DeltaTime;

        FVector diff = PlayerCharacter.ActorLocation - Other.ActorLocation;
        diff.Normalize();

        FVector Pull = diff * PullForce;

        MoveComp.AddImpulse(-Pull);
	}
}

float GetDist(FVector pos1, FVector pos2 = FVector(0.f, 0.f, 0.f)) {
    return FMath::Sqrt(((pos2.X - pos1.X) * (pos2.X - pos1.X)) + ((pos2.Y - pos1.Y) * (pos2.Y - pos1.Y)) + ((pos2.Z - pos1.Z) * (pos2.Z - pos1.Z)));
}