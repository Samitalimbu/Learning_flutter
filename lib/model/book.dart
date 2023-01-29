class Book{
  final String title;
  final String detail;
  final String rating;
  final String genre;
  final String imageUrl;

  Book({
    required this.detail,
    required this.genre,
    required this.imageUrl,
    required this.rating,
    required this.title,
});

  factory Book.fromJson(Map<String,dynamic> json){
    return Book(
        detail: json['detail'],
        genre: json['genre'],
        imageUrl: json['imageUrl'],
        rating: json['rating'],
        title: json['title'],
    );
  }

}

List<Book> books=[
  Book(detail: "To Kill a Mockingbird is a novel by the American author Harper Lee. It was published in 1960 and was instantly successful. In the United States, ",
      genre: "Mystery",
      imageUrl: "assets/images/book2.jpg",
      rating: "*****",
      title: "To kill a Mocking Bird"),
  Book(detail: "To Kill a Mockingbird is a novel by the American author Harper Lee. It was published in 1960 and was instantly successful. In the United States, ",
      genre: "Mystery",
      imageUrl: "assets/images/book3.jpg",
      rating: "*****",
      title: "To kill a Mocking Bird"),
  Book(detail: "To Kill a Mockingbird is a novel by the American author Harper Lee. It was published in 1960 and was instantly successful. In the United States, ",
      genre: "Mystery",
      imageUrl: "assets/images/book4.jpg",
      rating: "*****",
      title: "To kill a Mocking Bird"),
];
