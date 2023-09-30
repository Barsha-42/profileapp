import 'package:flutter/material.dart';
import 'package:profileapp/main.dart';
import 'package:profileapp/profile_page.dart';

void main(List<String> args) {
  runApp( const MyApp() );
}
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.lightBlue,title: Text("Profile App"),centerTitle: true,),
      body: Column(children: [
        Image.asset("ios/images/D6241E51-2FB9-4ED1-8D5A-455CB32E4C50_1_105_c.jpeg"),
        ElevatedButton(onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: ((context) => ProfilePage())));
        }, child: Text("profile")) ]),
    );

  }
}