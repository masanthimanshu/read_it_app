class BooksDataModel {
  final String author;
  final String bookName;
  final String previewImg;

  BooksDataModel({
    required this.author,
    required this.bookName,
    required this.previewImg,
  });

  factory BooksDataModel.fromJson(Map<String, dynamic> json) {
    return BooksDataModel(
      author: json["author"],
      bookName: json["bookName"],
      previewImg: json["previewImg"],
    );
  }
}
