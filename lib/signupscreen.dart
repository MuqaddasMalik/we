import 'package:flutter/material.dart';
import 'package:we/mainscree.dart';
import 'package:we/reusebale.dart';
import 'package:we/signinscreen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 50),
        child: Column(
          children: [
            const CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage('assests/images/3.jpeg')),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'WellCome to\n SignUp page',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: InputDecoration(
                  hintText: 'Enter Your email',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                          const BorderSide(width: 10.0, color: Colors.black))),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: InputDecoration(
                  hintText: 'Enter Your password',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                          const BorderSide(width: 10.0, color: Colors.black))),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: InputDecoration(
                  hintText: 'Confirm password',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                          const BorderSide(width: 10.0, color: Colors.black))),
            ),
            const SizedBox(
              height: 40,
            ),
            ReusebleButton(
              OnPres: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (contex) => const MainScreen()));
              },
              tittle: 'SignUp',
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text('Already have an account?'),
                  const SizedBox(
                    width: 5,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (contex) => const SignInScreen()));
                      },
                      child: const Text(
                        'LognIn',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.deepPurple),
                      ))
                ])
          ],
        ),
      ),
    );
  }
}
