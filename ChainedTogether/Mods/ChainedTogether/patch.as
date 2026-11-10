@open Vino/Characters/PlayerCharacter.as

@import Mods.ChainedTogether.ChainedTogetherCapability;

@patch auto function BeginPlay
    void BeginPlay()
	{
		// Input
		AddCapability(n"MovementDirectionInputCapability");
		AddCapability(n"TutorialCapability");

		// Physics
		AddCapability(n"PushDynamicObjectsCapability");

		// Pre Movement
		AddCapability(n"UpdateGroundedStateEventAction");
		AddCapability(n"UpdateAirTimeCapability");
		AddCapability(n"CharacterFaceDirectionCapability");

		AddCapability(n"CharacterSquishedCapability");

		//PlaneLock
		AddCapability(n"LockCharacterToPlaneCapability");

		// Core Movement
		{	// Floor Move
			AddCapability(n"CharacterFloorMoveCapability");
			AddCapability(n"CharacterFloorTurnAroundCapability");
			AddCapability(n"CharacterUnwalkableSurfaceMoveCapability");
			AddCapability(n"CharacterStartMovementGroundCheckCapability");
		}
		{	// Jump
			AddCapability(n"CharacterJumpCapability");
			AddCapability(n"CharacterAirJumpCapability");
			AddCapability(n"CharacterResetAirJumpsCapability");
			AddCapability(n"CharacterLongJumpCapability");
			
			AddCapability(n"CharacterJumpToCapability");
		}
		{	// Dash
			AddCapability(n"CharacterDashCapability");
			AddCapability(n"CharacterPerfectDashCapability");
			AddCapability(n"CharacterDashSlowdownCapability");
			AddCapability(n"CharacterAirDashCapability");
			AddCapability(n"CharacterDashWallHitPrediction");

			AddCapability(n"CharacterPerfectDashCameraCapability");
		}
		{	// Skydive
			AddCapability(n"CharacterSkydiveCapability");
			AddCapability(n"CharacterSkydiveCameraCapability");
		}
		{	// Sprint
			AddCapability(n"CharacterSprintCapability");
			AddCapability(n"CharacterSprintActivationCapability");
			AddCapability(n"CharacterSprintSlowdownCapability");
			AddCapability(n"CharacterSprintTurnAroundCapability");
		}
		{	// Ledge Grab
			AddCapability(n"CharacterEnterLedgeGrabCapability");
			AddCapability(n"CharacterLedgeGrabHangCapability");
			AddCapability(n"CharacterLedgeGrabClimbUpCapability");
			AddCapability(n"CharacterLedgeGrabJumpOffCapability");
			AddCapability(n"CharacterLedgeGrabJumpUpCapability");
			AddCapability(n"CharacterLedgeVaultCapability");
			AddCapability(n"CharacterLedgeGrabDropCapability");
			AddCapability(n"CharacterLedgeGrabEvaluateCapability");
		}
		{	// Ground Pound
			AddCapability(n"CharacterEvaluateGroundPoundCapability");
			AddCapability(n"CharacterGroundPoundEnterCapability");
			AddCapability(n"CharacterGroundPoundFallCapability");
			AddCapability(n"CharacterGroundPoundLandCapability");
			AddCapability(n"CharacterGroundPoundStandUpCapability");
			AddCapability(n"CharacterGroundPoundJumpCapability");
			AddCapability(n"CharacterGroundPoundDashCapability");
			AddCapability(n"CharacterGroundPoundLandOnSlopeCapability");
 
			//AddCapability(n"CharacterGroundPoundStartCapability");
			//AddCapability(n"CharacterGroundPoundFallCapability");
			//AddCapability(n"CharacterGroundPoundLandCapability");
			//AddCapability(n"CharacterGroundPoundLandOnSlopeCapability");
			//AddCapability(n"CharacterGroundPoundJumpCapability");
			//AddCapability(n"CharacterGroundPoundDashCapability");
			//AddCapability(n"CharacterGroundPoundExitCapability");
		}
		{	// Grinding	
			AddCapability(n"CharacterGrindingEvaluateCapability");

			// Enters
			AddCapability(n"CharacterProximityEnterGrindingCapability");
			AddCapability(n"CharacterGrindingGrappleEvaluateCapability");
			AddCapability(n"CharacterGrappleEnterGrindingCapability");
			AddCapability(n"CharacterTransferEnterGrindingCapability");
			AddCapability(n"CharacterGrindJumpGrindSplineCapability");
			
			// Grinding
			AddCapability(n"CharacterGrindingSpeedCapability");
			AddCapability(n"CharacterGrindingCapability");
			AddCapability(n"CharacterGrindingDashCapability");
			AddCapability(n"CharacterGrindingTurnAroundCapability");
			AddCapability(n"CharacterGrindingAudioCapability");

			// ImpactHandling
			AddCapability(n"CharacterGrindHitObstructionCapability");
			AddCapability(n"CharacterGrindingGroundExitCapability");

			// Exits
			AddCapability(n"CharacterGrindingJumpCapability");
			AddCapability(n"CharacterGrindJumpToLocationCapability");
			AddCapability(n"CharacterGrindingCancelGrindCapability");

			// Locking
			AddCapability(n"CharacterGrindAirSplineLockCapability");

			// Cameras
			AddCapability(n"CharacterGrindingGrappleEnterCameraCapability");
			AddCapability(n"CharacterGrindingCameraCapability");			
		}
		{	// Wall Sliding
			AddCapability(n"CharacterWallSlideCapability");
			AddCapability(n"CharacterWallSlideEvalutationCapability");
			AddCapability(n"CharacterAirDashWallSlideEvaluationsCapability");
			AddCapability(n"CharacterWallSlideVerticalJumpCapability");
			AddCapability(n"CharacterWallSlideHorizontalJumpCapability");
			AddCapability(n"CharacterWallSlideAudioCapability");
			AddCapability(n"CharacterWallSlideVerticalJumpReattachBlockerCapability");
			AddCapability(n"CharacterDashWallSlideEnterCapability");
			AddCapability(n"CharacterWallSlideCancelCapability");
		}
		{	// Wall Run
			// AddCapability(n"CharacterWallRunCapability");
			// AddCapability(n"CharacterWallRunJumpCapability");
		}
		{	// Swinging
			AddCapability(n"SwingSeekNearbyCapability");
			AddCapability(n"SwingCameraCapability");
			AddCapability(n"SwingDetachCameraCapability");
			
			AddCapability(n"SwingAttachCapability");
			AddCapability(n"SwingDetachCapability");
			AddCapability(n"SwingGrappleAttachCapability");
			
			AddCapability(n"SwingRadialMovementCapability");
		}
		{	// Sliding
			AddCapability(n"CharacterSlidingCapability");
			AddCapability(n"CharacterSlidingCameraCapability");
			AddCapability(n"CharacterSlidingJumpCapability");
		}
		{	// Crouch
			AddCapability(n"CharacterCrouchCapability");		
		}	//SplineLocking
		{
			AddCapability(n"LockCharacterToSplineCapability");
		}
		{	// Grapple
			AddCapability(n"CharacterGrappleCapability");
			GrappleCableComponent.SetVisibility(false);
			GrappleCableComponent.Deactivate();
		}		
		{	// Totem 			
			//AddCapability(n"CharacterSpeedBoostCapability");

			// Totem Head
			// AddCapability(n"TotemHeadCapability");
			// AddCapability(n"TotemHeadTravelToBodyCapability");
			// AddCapability(n"TotemHeadLeaveCapability");
			// AddCapability(n"TotemHeadReceiveLaunchedCapability");
			// AddCapability(n"TotemHeadSpeedBoostBodyCapability");

			//Totem Body
			//AddCapability(n"TotemBodyCapability");
			//AddCapability(n"TotemBodyInitializeHeadLaunchCapability");
			//AddCapability(n"TotemBodyTriggerHeadLaunchCapability");
			//AddCapability(n"TotemBodyGroundPoundStartCapability");
			//AddCapability(n"TotemHeadGroundPoundStartCapability");
		}
		
		//AddCapability(n"CharacterFaceCameraCapability");
		AddCapability(n"CancelMoveToCapability");
		AddCapability(n"CharacterDefaultMoveToCapability");
		AddCapability(n"MovementNetworkReplicationCapability");

		//BurstForces
		AddCapability(n"BurstForceCapability");		

		// Camera
		AddCapability(n"CameraUpdateCapability");
		AddCapability(n"CameraControlCapability");
		AddCapability(n"CameraLazyChaseCapability");
		AddCapability(n"CameraAdjustExtremePitchChaseCapability");
		AddCapability(n"CameraForcedClampedPointOfInterestCapability");		
		AddCapability(n"CameraClampedPointOfInterestCapability");
		AddCapability(n"CameraInputAssistPointOfInterestCapability");
		AddCapability(n"CameraPointOfInterestCapability");
		AddCapability(n"CameraNonControlledCapability");
		AddCapability(n"CameraNonControlledTransitionCapability");
		AddCapability(n"CameraCutsceneBlendInCapability");
		AddCapability(n"CameraNetworkSyncCapability");
		AddCapability(n"CameraModifierCapability");
		AddCapability(n"CameraImpulseCapability");
		AddCapability(n"CameraHideOverlappersCapability");
		AddCapability(n"CameraMatchOthersCutsceneRotationCapability");

		// Interaction
		AddCapability(n"InteractionCapability");

		// Collision
		AddCapability(n"PlayerCollisionCapability");

		// Visibility
		AddCapability(n"PlayerVisibilityCapability");
	
		// Death & Health
		AddCapability(n"CanActivateCheckpointVolumesCapability");
		AddCapability(n"PlayerCanRespawnCapability");
		AddCapability(n"PlayerRespawnCapability");
		AddCapability(n"PlayerRespawnHUDCapability");
		AddCapability(n"PlayerRespawnTimerCapability");
		AddCapability(n"PlayerTensionModeCapability");
		AddCapability(n"PlayerDieCapability");
		AddCapability(n"PlayerGameOverCapability");
		AddCapability(n"PlayerHealthDisplayCapability");
		AddCapability(n"PlayerHealthRegenerationCapability");
		AddCapability(n"PlayerDeathVelocityCapability");
		AddCapability(n"PlayerHealthAudioCapability");
		AddCapability(n"PlayerRespawnAudioCapability");
		AddCapability(n"PlayerDeathFadeToBlackAudioCapability");		
		AddCapability(n"PlayerGameOverAudioCapability");
		AddCapability(n"PlayerHealthAudioFilteringCapability");

		// Animation
		AddCapability(n"CancelThreeShotCapability");
		AddCapability(n"FullscreenDisableAnimLookAtCapability");

		// Pickup
		AddCapability(n"PickupCapability");

		// Dialogue
		AddCapability(n"PlayerDialogueCapability");
		AddCapability(n"PlayerStationaryDialogueCapability");

		// Effect
		AddCapability(n"SpeedEffectCapability");		

		// Player location
		AddCapability(n"PlayerMarkerCapability");
		AddCapability(n"FindOtherPlayerCapability");

		// Audio
		AddCapability(n"DefaultListenerCapability");
		AddCapability(n"DefaultPlayerPanningCapability");
		AddCapability(n"PlayerGameplayStatusUpdateCapability");
		AddCapability(n"PlayerMovementAudioCapability");
		AddCapability(n"PlayerFoghornCapability");
		AddCapability(n"CutsceneListenerCapability");
		AddCapability(n"FullScreenListenerCapability");
		AddCapability(n"HorizontalSplitScreenListenerCapability");
		AddCapability(n"ReflectionTraceCapability");
		AddCapability(n"ReflectionTraceStaticCapability");
		AddCapability(n"ReflectionTraceFullScreenCapability");

		if(IsMay())
			AddCapability(n"AudioTimeDialationCapability");

		// AudioMovementData
		AddCapability(n"PlayerVelocityDataUpdateCapability");

		// Sequencer
		AddCapability(n"SkipCutsceneCapability");

		// Pendulum
		AddCapability(n"CharacterPendulumCapability");

		// AutoMove
		AddCapability(n"CharacterAutoMoveCapability");

		// Knockdown
		AddCapability(n"CharacterKnockDownCapability");

		// Focus points
		AddCapability(n"LookAtFocusPointCapability");

		// Strafe
		AddCapability(n"CharacterSlowStrafeCapability");

        AddCapability(n"ChainedTogetherCapability");

		SetupComponents();

		if(IsMay())
		{
			FHazeResetFunction ResetFunc;
			ResetFunc.BindUFunction(this, n"ResetAudioManager");
			Reset::BindResetFunctionOneOff(this, ResetFunc);
		}

		AddCustomPostProcessSettings(PostProcessingComponent.GlobalPostProcess, 1.f, this);	

		// Make sure any settings remain after reset
		CameraUserComp.RecordInitialState();

        // Nuke camera frustrum and proxy editor comps which we don't use in-game        
        Camera.ClearEditorProxies();
		
		DisableDecals(Mesh);
		Mesh.OnAttachedChild.AddUFunction(this, n"DisableDecals");

		FocusTargetSettings = UFocusTargetSettings::GetSettings(this);
		UFocusTargetSettings::SetComponent(this, Mesh, this, EHazeSettingsPriority::Defaults);

		Material::SetScalarParameterValue(WorldShaderParameters, n"IsEditor", 0);
	}
@end

@open Cake/LevelSpecific/Clockwork/LeaveCloneMechanic/CharacterSequenceCapability.as
@patch auto function OnDeactivated
    void OnDeactivated(FCapabilityDeactivationParams Params)
	{   
        Player.UnblockCapabilities(n"ChainedTogether", this);

		SeqComp.bStartedChargingClone = false;

		Owner.StopAllSlotAnimations();

		if (Params.GetActionState(n"LeaveClone"))
		{
			FRotator CloneRotation = Params.ActorParams.Rotation;
			ModifyCloneRotationForVolumes(CloneRotation);

			SeqComp.ActiveClone(Params.ActorParams.Location, CloneRotation, Player);
			SeqComp.CallCloneOnEvent(ESequenceEventType::OnPlacedClone);
			Player.SetCapabilityActionState(n"AudioChargeWasCompleted", EHazeActionState::Active);	
		}
		else
		{
			Player.StopForceFeedback(SeqComp.LeaveCloneForceFeedback, n"LeaveClone");		
			Player.Mesh.ResetSubAnimationInstance();
		}
	}
@end

@patch auto function OnActivated
    void OnActivated(FCapabilityActivationParams ActivationParams)
	{
        Player.BlockCapabilities(n"ChainedTogether", this);

		ChargeTimeRemaining = ChargeDuration;
		bChargeComplete = false;
		bIsButtonStillHeld = true;
		bCameraShook = false;
		bChargeLockedIn = false;

		SeqComp.bStartedChargingClone = true;
		SeqComp.bCloneWasAirborne = MoveComp.IsAirborne();

		Player.PlayForceFeedback(SeqComp.LeaveCloneForceFeedback, false, false, n"LeaveClone");	
		Player.SetCapabilityActionState(n"AudioStartedChargingClone", EHazeActionState::ActiveForOneFrame);
	}
@end