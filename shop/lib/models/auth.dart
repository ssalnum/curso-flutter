import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shop/exceptions/auth_exception.dart';

class Auth with ChangeNotifier {
  // Future<void> _authenticate(String email, String password, String urlFragment) {}
  String? _token;
  String? _email;
  String? _uid;
  DateTime? _expiryDate;

  // TERMINAR
  // bool get isAuth {
  //   final isValid = _expiryDate?.isAfter(DateTime.now()) ?? false;
  // }

  Future<void> _authenticate(
      String email, String password, String urlFragment) async {
    final url = 'urlQualquer';
    final response = await http.post(
      Uri.parse(url),
      body: jsonEncode({
        'email': email,
        'password': password,
        'returnSecureToken': true,
      }),
    );

    final body = jsonDecode(response.body);

    if (body['error'] != null) {
      throw AuthException(body['error']['message']);
    } else {}

    print(body);
  }

  Future<void> signup(String email, String password) async {
    return _authenticate(email, password, 'signUp');
  }

  Future<void> login(String email, String password) async {
    return _authenticate(email, password, 'signInWithPassword');
  }
}
