class DocumentDoesntExistException implements Exception {
  final String? documentPath;
  final String message;

  DocumentDoesntExistException({
    this.documentPath,
    this.message = 'The requested document does not exist.',
  });

  @override
  String toString() {
    if (documentPath != null) {
      return 'DocumentDoesntExistException: $message (path: $documentPath)';
    }
    return 'DocumentDoesntExistException: $message';
  }
}
