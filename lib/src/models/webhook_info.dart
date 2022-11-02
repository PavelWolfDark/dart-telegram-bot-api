class WebhookInfo {
  final String url;
  final bool hasCustomCertificate;
  final int pendingUpdateCount;
  final String? ipAddress;
  final int? lastErrorDate;
  final String? lastErrorMessage;
  final int? lastSynchronizationErrorDate;
  final int? maxConnections;
  // List<UpdateType>
  final List<String>? allowedUpdates;

  WebhookInfo(
      {required this.url,
      required this.hasCustomCertificate,
      required this.pendingUpdateCount,
      this.ipAddress,
      this.lastErrorDate,
      this.lastErrorMessage,
      this.lastSynchronizationErrorDate,
      this.maxConnections,
      this.allowedUpdates});

  factory WebhookInfo.fromJson(Map<String, dynamic> json) {
    List<String>? jsonAllowedUpdates = json['allowed_updates'];
    List<String>? allowedUpdates;
    if (jsonAllowedUpdates != null) {
      allowedUpdates = [...jsonAllowedUpdates];
    }
    return WebhookInfo(
        url: json['url'],
        hasCustomCertificate: json['has_custom_certificate'],
        pendingUpdateCount: json['pending_update_count'],
        ipAddress: json['ip_address'],
        lastErrorDate: json['last_error_date'],
        lastErrorMessage: json['last_error_message'],
        lastSynchronizationErrorDate: json['last_synchronization_error_date'],
        maxConnections: json['max_connections'],
        allowedUpdates: allowedUpdates);
  }
}
