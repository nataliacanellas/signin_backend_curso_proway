import 'package:flutter/material.dart';
import 'package:trabalho_warren/presenter/signUp/sign_up_page.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

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
                  'Sign in',
                  style: TextStyle(color: Colors.white, fontSize: 35),
                ),
                const SizedBox(height: 35),
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
                const SizedBox(height: 50),
                const Text(
                  'or use your email account',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 10),
                ColoredBox(
                  color: Colors.white,
                  child: TextFormField(
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(10),
                        label: Row(
                          children: const [
                            Icon(
                              Icons.email_outlined,
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
                const SizedBox(height: 10),
                InkWell(
                  onTap: () {},
                  child: const Text(
                    'Forgot your password?',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.grey,
                    ),
                  ),
                ),
                const SizedBox(height: 50),
                MaterialButton(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  minWidth: 350,
                  onPressed: () {},
                  child: const Text(
                    'SIGN IN',
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.deepPurple,
                    ),
                  ),
                ),
                const SizedBox(height: 50),
                const Text(
                  'Enter your personal details \n and start a journey with us',
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 25),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const SignUpPage(),
                      ),
                    );
                  },
                  child: const Text(
                    'SIGN UP',
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
