import 'package:flutter/material.dart';
import 'package:we/reusebale.dart';
import 'package:we/signupscreen.dart';

import 'mainscree.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final _formKey = GlobalKey<FormState>();
 TextEditingController emailcontroller = TextEditingController();
 TextEditingController passwordcontroller = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 50),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage('assests/images/1.webp')),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'WellCome to\n LogIn page',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: emailcontroller,
                      decoration: InputDecoration(
                          hintText: 'Enter Your email',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                              const BorderSide(width: 10.0, color: Colors.black))),
                      validator: (value){
                        if (value!.isEmpty){
                          return 'Enter Email';
                        }else{
                          return null;
                        }
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: passwordcontroller,
                      decoration: InputDecoration(
                          hintText: 'Enter your password',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                              const BorderSide(width: 10.0, color: Colors.black))),
                      validator: (value){
                        if(value!.isEmpty){
                          return 'Enter Password';
                        }else{
                          return null;
                        }
                      },
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                  ],

                ),


              ),
              const Padding(
                padding: EdgeInsets.only(left: 260),
                child: Text(
                  'Forget password',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              ReusebleButton(
                OnPres: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (contex) => const MainScreen()));
                },
                tittle: 'LogIn',
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text('Dont have an account?'),
                    const SizedBox(
                      width: 5,
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (contex) => SignUpScreen()));
                        },
                        child: const Text(
                          'SignUp',
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Colors.deepPurple),
                        ))
                  ])
            ],
          ),
        ),
      ),
    );
  }
}
