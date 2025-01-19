class DynamicsResponseEntity {
  final List<AlertEntity> alerts;
  final List<DynamicEntity> dynamics;

  const DynamicsResponseEntity({
    required this.alerts,
    required this.dynamics,
  });
}

class AlertEntity {
  final String message;
  final bool resubmitLink;

  const AlertEntity({
    required this.message,
    required this.resubmitLink,
  });
}

class DynamicEntity {
  final String date;
  final String lab;
  final double value;

  const DynamicEntity({
    required this.date,
    required this.lab,
    required this.value,
  });
}
