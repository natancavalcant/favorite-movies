class User {
  final String username;
  final String password;
  final String question;
  final String answer;

  User(
      {required this.username,
      required this.password,
      required this.question,
      required this.answer});

  static User getUser() {
    return User(
        username: 'admin',
        password: '123456789',
        question: "whats your surname?",
        answer: 'silva');
  }
}
