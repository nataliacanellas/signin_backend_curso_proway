import 'package:flutter/material.dart';
import 'package:trabalho_warren/presenter/signIn/sign_in_page.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Center(
        child: SingleChildScrollView(
            padding: const EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Your registration\nwas successful!',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 35),
                ),
                const SizedBox(height: 30),
                Icon(
                  Icons.check,
                  color: Colors.deepPurple[200],
                  size: 250,
                ),
                const SizedBox(height: 30),
                const Text(
                  'Your registration was successful\nand we have sent you\na confirmation receipt to your\nemail at:',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'natalia@gmail.com',
                  style:
                      TextStyle(fontSize: 15, color: Colors.grey[300], fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 30),
                MaterialButton(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  minWidth: 350,
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const SignInPage(),
                      ),
                    );
                  },
                  child: const Text(
                    'SIGN IN',
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.deepPurple,
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
