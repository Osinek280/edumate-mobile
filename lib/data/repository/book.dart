// lib/features/books/data/repositories/book_repository.dart
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:edumate_mobile/data/models/book.dart';

class BookRepository {
  final Dio dio;

  BookRepository({required this.dio});

  Future<Either<String, List<Book>>> getBooks() async {
    try {
      final response = await dio.get('/books');
      final books = (response.data as List)
          .map((bookJson) => Book.fromJson(bookJson))
          .toList();
      return Right(books);
    } on DioException catch (e) {
      return Left(e.message ?? 'Failed to fetch books');
    } catch (e) {
      return Left('Unexpected error: $e');
    }
  }
}
