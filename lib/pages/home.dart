import 'package:dcs_arman_aurobindo/widgets/home/buttons.dart';
import 'package:dcs_arman_aurobindo/widgets/home/profile.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final String name = "Joylene Rivera";
  final String position = "App Developer";
  final String email = "joeylenerivera@gmail.com";
  final String desc = "A kiddo who uses Flutter in app development. Currently playing around with widgets to create amazing User Interfaces.";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
          SizedBox(height: 65,),  
          Profile(name: name,desc: desc,position: position,email: email), 
          SizedBox(height: 35,),
          Profilebutton()],
        ),
      ),
    );
  }
}
