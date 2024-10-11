import 'dart:math';
import 'dart:convert';
import 'package:flowtech_crm/classes/auth_class.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:appwrite/appwrite.dart';
import 'package:uuid/uuid.dart';
import '../constants.dart';
import 'package:shared_preferences/shared_preferences.dart';


class AuthProvider extends ChangeNotifier {
    final Client client = Client()
    
    ..setEndpoint(appUrl)
    ..setProject(appProjectId)
    ..setSelfSigned(status: true);
    
    
    
    
    // For self signed certificates, only use for development

  AuthData _authData;

  AuthProvider(this._authData);

  AuthData get authData => _authData;



Future<void> signUp({required String email, required String password,required String username}) async {
    try {
      final Account account = Account(client);
      final result = await account.create(
        userId: Uuid().v1(), // Generate a unique ID
        email: email,
        password: password,
        name: username,
      );

    
    print(result.toString());
    } catch (e) {
      // Handle errors appropriately (e.g., print, show a snackbar)
      print('Signup error: $e');
      return null;
    }
  }

}