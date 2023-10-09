import 'package:flutter/material.dart';
// import 'package:portfolio_naman/Nav_bar.dart';
import 'package:portfolio_naman/appbar.dart';

class AboutMeScreen extends StatelessWidget {
  const AboutMeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            // stops: [0.1, 0.5, 0.7, 0.9],
            colors: [
              Color.fromARGB(255, 26, 2, 80),
              Color.fromARGB(255, 87, 7, 98),
            ],
          ),
        ),
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
                onPressed: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const NavBar(),
                      ),
                    ),
                icon: const Icon(Icons.arrow_back)),
            title: const Text('About Me'),
            backgroundColor: const Color.fromARGB(255, 26, 2, 80),
          ),
          body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromARGB(255, 208, 247, 69),
                  Color.fromARGB(255, 24, 201, 8),
                ],
              ),
            ),
            child: const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    radius: 80,
                    backgroundImage: AssetImage('assets/profile.jpg'),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Naman Jain',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Software Developer',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'About Me:',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      'I am a currently pursuing B.Tech from AJAY KUMAR GARG ENGINEERING COLLEGE in AIML.I am a Tech enthusiastic , currently learning App Development using Flutter Framework.This my first app.I am a member in Open Source Software Soceity on Probation Period.I want to learn and explore new Technology and develop new and amazing software.I want to continue learning and grow my personality and learn new skills.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
