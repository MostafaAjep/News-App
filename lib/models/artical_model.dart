class ArticalModel {
  final String? image;
  final String? title;
  final String? subTitle;
  final String? url;
  ArticalModel({
    this.image,
    this.title,
    this.subTitle,
    required this.url,
  });

  factory ArticalModel.fromjson(json) {
    return ArticalModel(
      url: json['url'],
      subTitle: json['description'],
      image: json['urlToImage'],
      title: json['title'],
    );
  }
}
