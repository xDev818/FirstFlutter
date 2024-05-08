import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My First Flutter Demo',
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 87, 8, 225)),
        useMaterial3: true,
      ),
      home: const MyHomePage() ,
    );
  }
} 

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
 
 @override
  Widget build(BuildContext context) { 
    return Scaffold(
      appBar: AppBar(title: const Text('Ease Event ( Al Servo )')),
      //body: const Text('Test'),);
      // body:  Column(
      //   children: <Widget>[ServicesWidget(),SpecialtyWidget(),],
      // ));
      body: const TextInputWidget()
      );
  }
}

// class  ServicesWidget extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return const Text('User');

//   }
// }

// class  SpecialtyWidget extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return const Text('Provider/Supplier');

//   }
// }


class TextInputWidget extends StatefulWidget {
  const TextInputWidget({super.key});

  @override
  State<TextInputWidget> createState() => _TextInputWidgetState();
}

class _TextInputWidgetState extends State<TextInputWidget> {
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    //return const Placeholder();
     return  TextField(
      controller: controller,
      decoration: InputDecoration(prefixIcon: Icon(Icons.message),labelText: 'Enter a message'),);
  }
}