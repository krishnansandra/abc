import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portfolio',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
   MyHomePage({Key? key}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_rounded),
          onPressed: () {},
          color:Colors.lightBlue,
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        height: 700,
        width: double.infinity,
        padding: EdgeInsets.all(15),
      //color: Colors.green,
        child:Column(children: [
          Align(child: Text('Edit Profile',style: TextStyle(fontSize: 26,),),alignment: Alignment.centerLeft,),
          SizedBox(height:20),
          CircleAvatar(
            backgroundImage: AssetImage('assets/20201227_121705.jpg'),
            radius: 70,
          ),
           SizedBox(height:50),
          Row(
            children:[
            Text("Username"),
            Spacer(),
            Text("Sandra Krishnan"),
          ]),
          Spacer(),
          Divider(thickness: 2,color: Colors.black12,),
          Spacer(),
          Row(
            children:[
            Text("Email"),
            Spacer(),
            Text("sandrakrishnan665@gmail.com"),
          ]),
          Spacer(),
          Divider(thickness: 2,color: Colors.black12,),
          Spacer(),
          Row(
            children:[
            Text("GitHub Profile"),
            Spacer(),
            Text("Krishnansandra"),
          ]),
          Spacer(),
          Divider(thickness: 2,color: Colors.black12,),
          Spacer(),
          Row(
            children:[
            Text("Designation"),
            Spacer(),
            Text("BCA Student"),
          ]),
          Spacer(),
          Divider(thickness: 2,color: Colors.black12,),
          Spacer(),
          Row(
            children:[
            Text("Phone"),
            Spacer(),
            Text(" +916245789051"),
          ]),
          Spacer(),
          Divider(thickness: 2,color: Colors.black12,),
          Spacer(),
        ]),
      ),
    ) ;
  }
}

  