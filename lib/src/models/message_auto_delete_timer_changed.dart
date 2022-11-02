class MessageAutoDeleteTimerChanged {
  final int messageAutoDeleteTime;

  MessageAutoDeleteTimerChanged({required this.messageAutoDeleteTime});

  factory MessageAutoDeleteTimerChanged.fromJson(Map<String, dynamic> json) =>
      MessageAutoDeleteTimerChanged(
          messageAutoDeleteTime: json['message_auto_delete_time']);
}
