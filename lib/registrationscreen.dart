import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:foranimals/homepage.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  late String email, password;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("For Animals Kayıt"),
        centerTitle: true,
      ),
      body: Form(
        key: _formKey,
        child: Container(
          padding: const EdgeInsets.all(12.0),
          child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  TextFormField(
                    onChanged: (getEmail) {
                      setState(() {
                        email = getEmail;
                      });
                    },
                    validator: (getEmail) {
                      return getEmail!.contains("@") ? null : "Mail Geçersiz";
                    },
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      labelText: "Email Giriniz...",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    onChanged: (getPassword) {
                      setState(() {
                        password = getPassword;
                      });
                    },
                    validator: (getPassword) {
                      return getPassword!.length >= 6
                          ? null
                          : "En Az 6 Karakter Olmalıdır.";
                    },
                    obscureText: true,
                    decoration: const InputDecoration(
                      labelText: "Şifre Giriniz...",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: double.infinity,
                    height: 40,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text("Kaydol"),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    child: GestureDetector(
                      onTap: () {
                        //.....giriş sayfasına gitsin
                      },
                      child: const Text("Zaten bir hesabım var."),
                    ),
                  )
                ],
              )),
        ),
      ),
    );
  }

  void signUp() {
    if (_formKey.currentState!.validate()) {
      FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password)
          .then((user) {
            Navigator.push(context, MaterialPageRoute(builder: (_) =>HomePage()));
      })
          .catchError((error) {
            Fluttertoast.showToast(msg: "Giriş yapılamadı.");
      });
    }
  }
}
