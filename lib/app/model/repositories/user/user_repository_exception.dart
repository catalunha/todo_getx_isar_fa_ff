class UserRepositoryException implements Exception {
  final String message;
  UserRepositoryException({
    required this.message,
  });
}
