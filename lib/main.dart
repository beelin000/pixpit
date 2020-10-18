import 'package:flutter/material.dart';
import 'config/palette.dart';
import 'screens/screens.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PixPit',
      debugShowCheckedModeBanner: false,
      initialRoute: LoginScreen.tag, //名为"menu"的路由作为应用的home(首页)
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: Palette.scaffold,
      ),
      //注册路由表
      routes:{
        "menu": (context) => MenuScreen(),
        "/":(context) => HomeScreen(), //首页路由
        "post_details_screen":(context) => PostDetailsScreen(), // 推文详情页路由
        "login_screen":(context) => LoginScreen(), // 登陆页面路由
        "home_screen":(context) => HomeScreen(), // 主页路由
        "profile_screen": (context) => ProfileScreen(), // 用户信息页路由
      } 
    );
  }
}

