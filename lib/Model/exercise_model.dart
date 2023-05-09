class Exercise {
  final String name;
  final String description;
  final String videoUrl;

  Exercise({
    required this.name,
    required this.description,
    required this.videoUrl,
  });

  factory Exercise.fromJson(Map<String, dynamic> json) {
    return Exercise(
      name: json['name'],
      description: json['description'],
      videoUrl: json['video_url'],
    );
  }
}