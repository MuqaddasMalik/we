import 'package:flutter/material.dart';

class ReusebleButton extends StatelessWidget {
  final VoidCallback OnPres;
  final String tittle;
  const ReusebleButton({Key? key, required this.OnPres, required this.tittle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: OnPres,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.deepPurpleAccent,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Center(
                  child: Text(
                tittle,
                style: const TextStyle(color: Colors.white, fontSize: 18),
              ))),
        ],
      ),
    );
  }
}
