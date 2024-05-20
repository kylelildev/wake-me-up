enum HomeMissionCardType {
  skipping,
  cycling,
  meditation,
}

class HomeMissionCard {
  final HomeMissionCardType type;
  final int duration;

  HomeMissionCard({required this.type, required this.duration});
}
