class ArticalModel {
  final String title;
  final String? description;
  final String? imageUrl;
  final String link;

  const ArticalModel({
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.link,
  });

  factory ArticalModel.fromJson(Map<String, dynamic> json) {
    return ArticalModel(
        link: json["link"],
        title: json['title'],
        description: json['description'],
        imageUrl: json['image_url']);
  }
}
