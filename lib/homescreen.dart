import 'package:flutter/material.dart';
import 'package:we/reusebale.dart';
import 'package:we/signinscreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  CircleAvatar(
                    radius: 70,
                    backgroundImage: AssetImage('assests/images/1.webp'),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                    radius: 70,
                    backgroundImage: AssetImage('assests/images/2.jpeg'),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  CircleAvatar(
                    radius: 70,
                    backgroundImage: AssetImage('assests/images/4.webp'),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                    radius: 70,
                    backgroundImage: AssetImage('assests/images/3.jpeg'),
                  ),
                ],
              ),
              const SizedBox(
                height: 80,
              ),
              const Text(
                'Enjoy the new experience of chating with friends',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'Connect people around the world for tree',
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(
                height: 50,
              ),
              ReusebleButton(
                  OnPres: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignInScreen()));
                  },
                  tittle: 'Get Started')
            ],
          ),
        ),
      ),
    );
  }
}
