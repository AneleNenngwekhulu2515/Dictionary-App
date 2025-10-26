import 'package:flutter/material.dart';
import 'second_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/main.webp"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min, 
            children: [
              Image.asset('images/open_green_book-removebg-preview.png',
              height: 170,
              ),
              const SizedBox(height: 20),
              
              const Text(
                'Welcome to the Dictionary',
                style: TextStyle(
                  fontFamily: 'LibreBaskerville',
                  fontSize: 40,
                  color: Color.fromARGB(255, 29, 53, 34),
                  fontWeight: FontWeight.bold,
                  shadows: [
                    Shadow(
                      offset: Offset(1, 5),
                      blurRadius: 3,
                      color: Colors.black54,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20), 
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(200, 60),
                  backgroundColor: const Color.fromARGB(120, 53, 117, 10)
                ),
                child: const Text('Start', style: TextStyle(fontSize: 25, color: Colors.black)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondPage()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
