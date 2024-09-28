import 'package:flutter/material.dart';
import 'package:presensi_lutfy/widget/navbar.dart';
import 'package:presensi_lutfy/widget/textfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: Container(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 100,
            ),
            const CircleAvatar(
              backgroundColor: Colors.grey,
              radius: 65.0,
              child: Icon(
                Icons.person,
                color: Colors.white,
                size: 100.0,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18.0),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromARGB(72, 12, 12, 12),
                      blurRadius: 20,
                      offset: Offset(0, 10),
                    )
                  ]),
              child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 50.0,
                          color: Colors.grey.shade600,
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      QTextField(
                          label: "Email",
                          suffixIcon: Icons.email,
                          onSubmitted: (value) {}),
                      const SizedBox(
                        height: 15.0,
                      ),
                      QTextField(
                        label: "Password",
                        suffixIcon: Icons.password,
                        onSubmitted: (value) {},
                        obsecureText: true,
                      ),
                      const SizedBox(height: 15.0),
                      ElevatedButton.icon(
                        icon: const Icon(Icons.login),
                        label: const Text("Login"),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const NavigationMenu()),
                          );
                        },
                      ),
                      const SizedBox(
                        height: 5,
                      )
                    ],
                  )),
            )
          ],
        ),
      )),
    );
  }
}
