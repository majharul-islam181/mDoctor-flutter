import 'package:flutter/material.dart';
import 'package:mdoc/done.dart';

// ignore: must_be_immutable
class LoginScreen extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  LoginScreen({super.key});

  // const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Login Screen'),
        backgroundColor: Colors.teal,
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: emailController,
                  decoration: const InputDecoration(
                    labelText: "Email",
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                TextField(
                  obscureText: true,
                  controller: passwordController,
                  decoration: const InputDecoration(
                      labelText: 'password', border: OutlineInputBorder()),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                SizedBox(
                  height: 50.0,
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Done()));
                    },
                    child: const Text(
                      'Submit',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
              ],
            )),
      ),
    );
  }
}
