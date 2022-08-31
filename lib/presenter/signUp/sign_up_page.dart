import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:trabalho_warren/model/user_model.dart';

import 'package:trabalho_warren/presenter/signIn/sign_in_page.dart';
import 'package:trabalho_warren/presenter/success_page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    Dio dio = Dio();

    Future<void> post(UserModel user) async {
      await dio.post('http://192.168.0.18/api/usuario', data: user.toJson());
    }

    TextEditingController? controllerName;
    TextEditingController? controllerEmail;
    TextEditingController? controllerPassword;

    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Center(
        child: SingleChildScrollView(
            padding: const EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Create Account',
                  style: TextStyle(color: Colors.white, fontSize: 35),
                ),
                const SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: const CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 20,
                        child: SizedBox(
                          height: 20,
                          child: Image(
                            color: Colors.deepPurple,
                            image: NetworkImage(
                              'https://cdn-icons-png.flaticon.com/512/174/174857.png',
                            ),
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 15),
                    InkWell(
                      onTap: () {},
                      child: const CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 20,
                        child: SizedBox(
                          height: 20,
                          child: Image(
                            color: Colors.deepPurple,
                            image: NetworkImage(
                              'https://logosmarcas.net/wp-content/uploads/2020/12/Google-Plus-Emblema.png',
                            ),
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 15),
                    InkWell(
                      onTap: () {},
                      child: const CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 20,
                        child: SizedBox(
                          height: 25,
                          child: Image(
                            color: Colors.deepPurple,
                            image: NetworkImage(
                              'https://pngimg.com/uploads/github/small/github_PNG34.png',
                            ),
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 45),
                const Text(
                  'or use your email for registration',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 10),
                ColoredBox(
                  color: Colors.white,
                  child: TextFormField(
                    controller: controllerName,
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(10),
                        label: Row(
                          children: const [
                            Icon(
                              Icons.person_outline,
                              color: Colors.grey,
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Name',
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        )),
                  ),
                ),
                const SizedBox(height: 15),
                ColoredBox(
                  color: Colors.white,
                  child: TextFormField(
                    controller: controllerEmail,
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(10),
                        label: Row(
                          children: const [
                            Icon(
                              Icons.mail_outline,
                              color: Colors.grey,
                            ),
                            SizedBox(width: 10),
                            Text(
                              'E-mail',
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        )),
                  ),
                ),
                const SizedBox(height: 15),
                ColoredBox(
                  color: Colors.white,
                  child: TextFormField(
                    controller: controllerPassword,
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(10),
                        label: Row(
                          children: const [
                            Icon(
                              Icons.lock_outline,
                              color: Colors.grey,
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Password',
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        )),
                  ),
                ),
                const SizedBox(height: 15),
                ColoredBox(
                  color: Colors.white,
                  child: TextFormField(
                    controller: controllerPassword,
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(10),
                        label: Row(
                          children: const [
                            Icon(
                              Icons.lock_outline,
                              color: Colors.grey,
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Confirm Password',
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        )),
                  ),
                ),
                const SizedBox(height: 30),
                MaterialButton(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  minWidth: 350,
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const SuccessPage(),
                      ),
                    );

                    UserModel user = UserModel(
                        name: controllerName!.text,
                        email: controllerEmail!.text,
                        senha: controllerPassword!.text);
                    post(user);
                  },
                  child: const Text(
                    'SIGN UP',
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.deepPurple,
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                const Text(
                  'To keep connected with us please \n login with your personal info',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 20),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const SignInPage(),
                      ),
                    );
                  },
                  child: const Text(
                    'SIGN IN',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.underline,
                      fontSize: 17,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
