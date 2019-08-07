import 'package:flutter/material.dart';
import 'package:dio/dio.dart';


class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    getHttp().then((value){
      print(value);
    });
    return Container(
       child: Scaffold(
         body: Center(
           child: Text('商城首页'),
         ),
       ),
    );
  }
  Future getHttp()async{
    try{
      Response response;
      response  = await Dio().get('https://www.easy-mock.com/mock/5c60131a4bed3a6342711498/baixing/dabaojian');
      return response.data;
    }catch(e){
      print(e);
    }
  }
}