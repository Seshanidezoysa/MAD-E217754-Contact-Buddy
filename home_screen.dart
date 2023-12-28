import 'package:flutter/material.dart';
import 'package:sample_app1/home_page1.dart';
import 'package:sample_app1/navigation_bar.dart';


class Splash extends StatefulWidget {
  const Splash ({key, required BottomNavigationBarExample bottomNavigationbar}) : super(key:key);

  @override
  _SplashState createState() => _SplashState();

}

class _SplashState extends State<Splash> {
  @override
  void initState(){
    super.initState();
    _navigatetohome();
  }

  _navigatetohome()async {
    await Future.delayed(Duration(milliseconds: 3500), () {});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>HomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.blue,
        body: Center(
        child: Container(
          child: Image.asset("images/image2.png"),
          ),
        ),
      );
  }
}





