import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Profile extends StatefulWidget {
  final String name;
  final String position;
  final String desc;
  final String email;
  const Profile(
      {Key? key,
      required this.name,
      required this.position,
      required this.desc, required this.email})
      : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage('images/Profile Picture.png'),
          radius: 72,
        ),
        SizedBox(height: 30,),
        Text(widget.name).text.xl4.italic.make(),
        SizedBox(height: 5,),
        Text(widget.position, style: TextStyle(color: Colors.blue[800]),).text.xl.make(),
        SizedBox(height: 30,),
        Text(widget.desc,textAlign: TextAlign.center,style: TextStyle(fontSize: 15, ),).box.make().px24(),
        SizedBox(height: 30,),
        Container(decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),color: Colors.blue[800]),child: Text(widget.email, style: TextStyle(fontSize: 15,color: Colors.white),).box.make().p12())
      ],
    );

  }
}
