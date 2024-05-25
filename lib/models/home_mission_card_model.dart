enum HomeMissionCardType {
  skipping,
  cycling,
  meditation,
  muscle,
  dumble,
  treadmill,
  running
}

class HomeMissionCard {
  final HomeMissionCardType type;
  final int duration;

  HomeMissionCard({required this.type, required this.duration});
}
