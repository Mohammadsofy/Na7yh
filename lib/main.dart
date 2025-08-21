import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool lan = true;

  Future<void> _instagram() async {
    final url = Uri.parse("https://www.instagram.com/na7ieh/");
    if (!await launchUrl(url, mode: LaunchMode.externalApplication))
      {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Na7yh",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Image.asset(
                    lan ? 'assets/1.jpg' : 'assets/c.png',
                    fit: BoxFit.contain,
                    width: double.infinity,
                  ),
                  Image.asset(
                    lan ? 'assets/2.jpg' : 'assets/m.jpg',
                    fit: BoxFit.contain,
                    width: double.infinity,
                  ),
                  Image.asset(
                    lan ? 'assets/3.jpg' : 'assets/m.jpg',
                    fit: BoxFit.contain,
                    width: double.infinity,
                  ),
                  Image.asset(
                    lan ? 'assets/4.jpg' : 'assets/m.jpg',
                    fit: BoxFit.contain,
                    width: double.infinity,
                  ),
                  Image.asset(
                    lan ? 'assets/5.jpg' : 'assets/m.jpg',
                    fit: BoxFit.contain,
                    width: double.infinity,
                  ),
                  Image.asset(
                    lan ? 'assets/6.jpg' : 'assets/m.jpg',
                    fit: BoxFit.contain,
                    width: double.infinity,
                  ),
                  Image.asset(
                    lan ? 'assets/7.jpg' : 'assets/m.jpg',
                    fit: BoxFit.contain,
                    width: double.infinity,
                  ),
                ],
              ),
            ),
            // Positioned(
            //   top: 40,
            //   left: 20,
            //   child: ElevatedButton(
            //     style: ElevatedButton.styleFrom(
            //       backgroundColor: Colors.white,
            //       shape: CircleBorder(),
            //       minimumSize: Size(50, 50),
            //     ),
            //     onPressed: () {
            //       setState(() {
            //         lan = !lan;
            //       });
            //     },
            //     child: Text(
            //       lan ? 'ar' : 'en',
            //       style: TextStyle(fontSize: 20, color: Colors.black),
            //     ),
            //   ),
            // ),
            Positioned(
              bottom: 40,
              left: 20,
              child: ShaderMask(
                shaderCallback: (bounds) => LinearGradient(
                  colors: [
                    Color(0xFFfeda75),
                    Color(0xFFfa7e1e),
                    Color(0xFFd62976),
                    Color(0xFF962fbf),
                    Color(0xFF4f5bd5),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ).createShader(bounds),
                child: IconButton(
                  onPressed: _instagram,
                  icon: FaIcon(FontAwesomeIcons.instagram),
                  iconSize: 50,
                  color: Colors.white,
                ),
              )
            ),
          ],
        ),
      ),
    );
  }
}
