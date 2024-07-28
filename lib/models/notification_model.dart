class CutomNote {
  final int userId;
  final int id;
  final String title;

  CutomNote({required this.userId, required this.id, required this.title});

  factory CutomNote.fromJson(Map<String, dynamic> json) {
    return CutomNote(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
    );
  }
}
