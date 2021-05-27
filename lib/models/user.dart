class User {
  final String username;
  final String email;
  final String password;
  final String question;
  final String answer;

  User(
      {required this.username,
      required this.email,
      required this.password,
      required this.question,
      required this.answer});

  static User getUser() {
    return User(
        username: 'admin',
        email: 'natan123@gmail.com',
        password: '123456789',
        question: "whats your surname?",
        answer: 'silva');
  }

  Map<String, dynamic> getMap() {
    return {
      "name": this.username,
      "email": this.email,
      "password": this.password,
      "recovery_question": this.question,
      "recovery_answer": this.answer
    };
  }

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
        username: json['username'],
        email: json['email'],
        password: json['password'],
        question: json['recovery_question'],
        answer: json['recovery_answer']);
  }
}
