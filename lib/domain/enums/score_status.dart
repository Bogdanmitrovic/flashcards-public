enum ScoreStatus { okay, max, low }

ScoreStatus calculateScoreStatus(
  int achievedScore,
  int maxScore, {
  double lowThreshold = 0.2,
}) {
  final isMax = maxScore == achievedScore;
  if (isMax) return ScoreStatus.max;

  final isLow = (achievedScore / maxScore) < lowThreshold;
  if (isLow) return ScoreStatus.low;

  return ScoreStatus.okay;
}
