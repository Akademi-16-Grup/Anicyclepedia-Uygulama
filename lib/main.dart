import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:foranimals/registrationscreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: RegisterProcesses(),
  ));
}

class RegisterProcesses extends StatelessWidget {
  const RegisterProcesses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RegistrationScreen();
  }
}
