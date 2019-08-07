import 'package:flutter/material.dart';

class MemberPage extends StatefulWidget {
  MemberPage({Key key}) : super(key: key);

  _MemberPageState createState() => _MemberPageState();
}

class _MemberPageState extends State<MemberPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Scaffold(
         body: Center(
           child: Text('会员中心'),
         ),
       ),
    );
  }
}