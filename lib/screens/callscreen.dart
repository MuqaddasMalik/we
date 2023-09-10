import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return const ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(
              'https://images.pexels.com/photos/1031081/pexels-photo-1031081.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
        ),
        title: Text('Arzu Qureshi'),
        subtitle: Text('you missed call'),
        trailing: Icon(Icons.call),
      );
    });
  }
}
