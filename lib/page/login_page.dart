import 'package:flutter/material.dart';
import 'package:spookyegg/page/homepage.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Container(
            padding: EdgeInsets.all(22),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 77, 19, 118),
                  Color.fromARGB(255, 213, 44, 84),
                ],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  child: Image.asset(
                    'assets/images/Logo/Untitled-7.png',
                    width: 250,
                    height: 250,
                  ),
                ),
                // const SizedBox(
                //   height: 60,
                // ),
                const Text(
                  'Hello, Welcome Back',
                  style: TextStyle(
                    color: Color.fromARGB(255, 232, 222, 71),
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Urbanist',
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Login to Continue',
                  style: TextStyle(
                    color: Color.fromARGB(255, 228, 237, 150),
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const SizedBox(
                  width: 390,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Email',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(40),
                        ),
                      ),
                      filled: true,
                      fillColor: Color.fromARGB(129, 255, 255, 255),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const SizedBox(
                  width: 390,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Password',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                        Radius.circular(40),
                      )),
                      filled: true,
                      fillColor: Color.fromARGB(129, 255, 255, 255),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      print('Forgot Clicked');
                    },
                    style: TextButton.styleFrom(
                        foregroundColor:
                            const Color.fromARGB(183, 255, 255, 255)),
                    child: Text('Forget Password?'),
                  ),
                ),
                SizedBox(
                  width: 250,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(213, 255, 205, 41),
                      foregroundColor: Colors.white,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            40,
                          ),
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed('/home');
                    },
                    child: Text('Login'),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed('/signup');
                        },
                        child: Text(
                          'Sign up',
                          style: TextStyle(
                            color: Colors.amber,
                            fontWeight: FontWeight.bold,
                          ),
                        ))
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  'Or Signin with',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  height: 12,
                ),
                SizedBox(
                  width: 280,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(225, 255, 255, 255),
                      foregroundColor: Color.fromARGB(255, 62, 62, 62),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            40,
                          ),
                        ),
                      ),
                    ),
                    onPressed: () {
                      print('signin with google');
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/google.png',
                          width: 20,
                          height: 20,
                        ),
                        Text('Login with Google'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
