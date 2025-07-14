// lib/features/books/data/models/book_model.dart
class Book {
  final int id;
  final String title;
  final String author;
  final int? year;
  final String? coverUrl;

  Book({
    required this.id,
    required this.title,
    required this.author,
    this.year,
    this.coverUrl,
  });

  factory Book.fromJson(Map<String, dynamic> json) {
    return Book(
      id: json['id'],
      title: json['title'],
      author: json['author'],
      year: json['year'],
      coverUrl: json['coverUrl'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'author': author,
      'year': year,
      'coverUrl': coverUrl,
    };
  }
}
