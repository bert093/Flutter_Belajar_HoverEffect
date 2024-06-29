import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: const Center(
            // membuat widget Center dengan childnya text agar bisa posisi text di tengah
            child: Text('My First App'),
          ),
        ),
        body: const Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SocialIcons(
                icon: fontAwesomeIcons.intagram, 
                color: Colors.pink, text: text) // membuat widget SocialIcons dari class SocialIcons dibawah
            ],
          ),
        ),
      ),
    );
  }
}

class SocialIcons extends StatefulWidget {
  final IconData icon;
  final Color color;
  final String text;
  const SocialIcons({super.key, required this.icon, required this.color, required this.text});

  @override
  State<SocialIcons> createState() => _SocialIconsState();
}

class _SocialIconsState extends State<SocialIcons> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      margin: EdgeInsets.only(right: 2),
      height: 105,
      width: 85,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: AnimatedContainer(
              height: 60,
              width: 60, 
              duration: Duration(milliseconds: 400),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
              ),
              child: Icon(widget.icon, size: 30, color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}