class MaskPosition {
  // MaskPositionPoint
  final String point;
  final double xShift;
  final double yShift;
  final double scale;

  MaskPosition(
      {required this.point,
      required this.xShift,
      required this.yShift,
      required this.scale});

  factory MaskPosition.fromJson(Map<String, dynamic> json) => MaskPosition(
      point: json['point'],
      xShift: json['x_shift'],
      yShift: json['y_shift'],
      scale: json['scale']);

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['point'] = point;
    json['x_shift'] = xShift;
    json['y_shift'] = yShift;
    json['scale'] = scale;
    return json;
  }
}
