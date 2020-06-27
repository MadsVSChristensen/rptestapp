import 'package:research_package/model.dart';

RPCompletionStep completionStep = RPCompletionStep("completionID")
  ..title = "Finished"
  ..text = "Thank you for taking the tests";

RPActivityStep tappingStep = RPTappingActivity(
  'Tapping step ID',
);

RPActivityStep reactionTimeStep = RPReactionTimeActivity(
  'Reaction Time step ID',
);

RPActivityStep rapidVisualInfoProcessingStep =
    RPRapidVisualInfoProcessingActivity(
  'RVIP step ID',
);

RPActivityStep activityStepTrail = RPTrailMakingActivity(
  'Trail Making step ID',
);

RPActivityStep activityStepLetterTapping = RPLetterTappingActivity(
  'Letter Tapping step ID',
);

RPActivityStep pairedAssociatesLearningStep =
    RPPairedAssociatesLearningActivity(
  'PAL step ID',
);

RPActivityStep corsiBlockTapping = RPCorsiBlockTappingActivity(
  'Corsi Block Tapping step ID',
);

RPActivityStep stroopEffect = RPStroopEffectActivity(
  'Stroop Effect step ID',
);

RPOrderedTask trailTask = RPOrderedTask(
  "1",
  [
    activityStepTrail,
  ],
);
RPOrderedTask tappingTask = RPOrderedTask(
  "2",
  [
    tappingStep,
  ],
);
RPOrderedTask reactionTask = RPOrderedTask(
  "3",
  [
    reactionTimeStep,
  ],
);
RPOrderedTask rvipTask = RPOrderedTask(
  "4",
  [
    rapidVisualInfoProcessingStep,
  ],
);
RPOrderedTask letterTask = RPOrderedTask(
  "5",
  [
    activityStepLetterTapping,
  ],
);
RPOrderedTask palTask = RPOrderedTask(
  "6",
  [
    pairedAssociatesLearningStep,
  ],
);
RPOrderedTask corsiTask = RPOrderedTask(
  "7",
  [
    corsiBlockTapping,
  ],
);
RPOrderedTask stroopTask = RPOrderedTask(
  "8",
  [
    stroopEffect,
  ],
);
