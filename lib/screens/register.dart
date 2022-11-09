import 'package:flutter/material.dart';
import 'package:mdoc/done.dart';
import 'package:mdoc/screens/login.dart';

// ignore: must_be_immutable
class RegisterScreen extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confrimPasswordController = TextEditingController();

  RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
        centerTitle: true,
        backgroundColor: Colors.orangeAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: emailController,
              decoration: const InputDecoration(
                labelText: "Email",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            TextFormField(
              obscureText: true,
              controller: passwordController,
              decoration: const InputDecoration(
                  labelText: 'password', border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: 20.0,
            ),
            TextFormField(
              obscureText: true,
              controller: confrimPasswordController,
              decoration: const InputDecoration(
                  labelText: 'confrim password', border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: 20.0,
            ),
            // ignore: sized_box_for_whitespace
            Container(
              height: 50.0,
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                onPressed: () async {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
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
            TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              },
              child: const Text('Already have a account? login here'),
            ),
          ],
        ),
      ),
    );
  }
}
