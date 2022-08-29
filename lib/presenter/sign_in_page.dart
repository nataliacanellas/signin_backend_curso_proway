import 'package:flutter/material.dart';

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
                        label: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
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
                      ),
                    )),
                  ),
                ),
                const SizedBox(height: 15),
                ColoredBox(
                  color: Colors.white,
                  child: TextFormField(
                    decoration: InputDecoration(
                        label: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
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
                      ),
                    )),
                  ),
                ),
                const SizedBox(height: 10),
                InkWell(
                  onTap: () {},
                  child: const Text(
                    'Forgot your password?',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                MaterialButton(
                  color: Colors.white,
                  minWidth: 350,
                  onPressed: () {},
                  child: const Text('SIGN IN'),
                ),
                const Text('Enter your personal details and start a journey with us'),
                InkWell(
                  onTap: () {},
                  child: const Text('SIGN UP', style: TextStyle(decoration: TextDecoration.underline),),
                )
              ],
            )),
      ),
    );
  }
}
