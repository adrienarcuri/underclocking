import 'dart:convert';

import 'package:test/test.dart';
import 'package:underclocking/models/user.dart';

main() {
  group('Testing User Model', () {
    // DataSet for testing
    const String _email = 'user1@test.com';
    const String _password = 'myPassword@!%';
    const String _pseudo = 'myPseudo';
    const String _description = 'null';
    const String _avatar = 'null';
    // Json
    const String _userAsJsonString =
        '{"email":"$_email","password":"$_password","pseudo":"$_pseudo","description":$_description,"avatar":$_avatar}';

    test('Should create a user', () {
      User user = User(
        email: _email,
        password: _password,
        pseudo: _pseudo,
      );

      expect(user.email, _email);
      expect(user.password, _password);
      expect(user.pseudo, _pseudo);
    });

    test('Should create a user from a json string', () {
      Map userMap = jsonDecode(_userAsJsonString);
      var user = User.fromJson(userMap);

      expect(user.email, _email);
      expect(user.password, _password);
      expect(user.pseudo, _pseudo);
    });

    test('Should create a json string from a user', () {
      User user = User(
        email: _email,
        password: _password,
        pseudo: _pseudo,
      );

      Map userMap = user.toJson();
      String jsonUser = jsonEncode(userMap);

      expect(jsonUser, _userAsJsonString);
    });
  });
}
