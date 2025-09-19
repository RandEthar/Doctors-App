String formatTime({required text}) {
  final parts = text.split(":");
  return parts[0] + ":" + parts[2];
}