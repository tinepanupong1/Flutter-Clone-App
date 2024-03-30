import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_clone/component/my_button.dart';

import 'package:netflix_clone/component/my_textfield1.dart';
import 'package:netflix_clone/screens/sign_up_screen.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:netflix_clone/widgets/bottom_nav_bar.dart';


class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<SignIn> {
  //text Editing Controller
  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  signInWithEmail() async {
  try {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: emailController.text,
      password: passwordController.text,
    );

    
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => BottomNavBar(),
      ),
    );
  } on FirebaseAuthException catch (e) {
    print('Failed with error code: ${e.code}');
    print(e.message);
  }
}

  

  @override
  Widget build(BuildContext context) {
    return Center(
  child: Scaffold(
    backgroundColor: Colors.black, 
    body: SingleChildScrollView(
      child: Container(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 120, 10, 140),
          child: Form(
            child: Column(
              children: [
                Center(
                  child: Image.asset('assets/images/netflix_logo1.png', width: 200),
                ),
                const SizedBox(height: 60),
                MyTextField1(
                  controller: emailController,
                  hintText: "Email",
                  obscureText: false,
                  labelText: "",
                ),
                const SizedBox(
                  height: 20,
                ),
                MyTextField1(
                  controller: passwordController,
                  hintText: "Password",
                  obscureText: true,
                  labelText: "",
                ),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                MyButton(onTap: signInWithEmail, hintText: 'Sign In'),
                const SizedBox(
                  height: 30,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 25,
                  ),
                  
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignUpScreen(),
                          ),
                        );
                      },
                      child: Text(
                        "Don't have an account? Sign up",
                        style: GoogleFonts.lato(
                          textStyle: Theme.of(context).textTheme.displaySmall,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.italic,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  ),
);
  }
  }