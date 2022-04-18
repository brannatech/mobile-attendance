class User {
  User(
    this.fName,
    this.lName,
    this.email,
    this.password,
  );
  String fName;
  String lName;
  String email;
  String password;
  String get getFname => fName;
  String get getLname => lName;
  String get getEmail => email;
}
