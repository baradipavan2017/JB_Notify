class Notices {
  final String title;
  final String description;
  final String url;
  final String dateTime;
  final String documentUrl;

  Notices({
    required this.title,
    required this.description,
    required this.dateTime,
    required this.url,
    required this.documentUrl,
  });

  factory Notices.fromRTDB(Map<String, dynamic> data) {
    return Notices(
      title: data['title'] ?? 'No Title',
      description: data['description'] ?? 'No Description',
      dateTime: data['datetime'] ?? 'NO date',
      url: data['url'] ?? '',
      documentUrl: data['documentURl'] ?? 'No Doc Url',
    );
  }
}
