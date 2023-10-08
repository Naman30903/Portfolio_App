import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_naman/Social_media.dart';
import 'package:portfolio_naman/main.dart';
import 'package:portfolio_naman/About_me.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            // backgroundColor: Colors.deepPurple,
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.purple, Colors.blue],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight)),
            ),
            elevation: 4,
            title: Text(MyApp.title),
            centerTitle: true,

            bottom: const TabBar(indicatorColor: Colors.white, tabs: [
              Tab(icon: FaIcon(FontAwesomeIcons.home), text: 'HOME'),
              Tab(
                icon: FaIcon(FontAwesomeIcons.graduationCap),
                text: 'EDUCATION',
              ),
              Tab(icon: FaIcon(FontAwesomeIcons.certificate), text: 'PROJECTS'),
              Tab(icon: FaIcon(FontAwesomeIcons.code), text: 'SKILLS'),
            ]),

            leading: IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                // Navigator.of(context).pop();
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const NaviBar(),
                  ),
                );
              },
            ),
          ),
          body: TabBarView(
            children: [
              Center(
                child: HomePage(),
              ),
              Center(
                child: EducationPage(),
              ),
              Center(
                child: ProjectViewDemo(),
              ),
              Center(
                child: SkillWidgetDemo(),
              ),
            ],
          ),
        ),
      );
}

// Widget buildPage(String text) => Center(
//   child: ,
// );

class NaviBar extends StatelessWidget {
  const NaviBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text('Naman Jain'),
            accountEmail: const Text('namanjain30903@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset('profile.jpg'),
              ),
            ),
            decoration: const BoxDecoration(
                color: Colors.deepPurple,
                image: DecorationImage(
                  image: AssetImage('images/backgd.jpg'),
                  fit: BoxFit.cover,
                )),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.account_box),
            title: const Text("About Me"),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => const AboutMeScreen(),
                ),
              );
            },
          ),
          // ListTile(
          //   leading: const FaIcon(FontAwesomeIcons.projectDiagram),
          //   title: const Text("Projects"),
          //   onTap: () => print('Tapped'),
          // ),
          ListTile(
            leading: const FaIcon(FontAwesomeIcons.certificate),
            title: const Text("Certificates"),
            onTap: () => print('Tapped'),
          ),
          ListTile(
            leading: const FaIcon(FontAwesomeIcons.github),
            title: const Text("Social Media"),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => SocialMediaPage(),
                ),
              );
            },
          ),
          ListTile(
            leading: const FaIcon(FontAwesomeIcons.phone),
            title: const Text("Contact Me"),
            onTap: () => print('Tapped'),
          ),
        ],
      ),
    );
  }
}

class EducationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //     // title: const Text('Education'),
      //     ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              EducationContainer(
                instituteName: 'AJAY KUMAR GARG ENGINEERING COLLEGE',
                course: 'B.TECH AIML ',
                percentage: 'CGPA 7.96',
                extraInfo: '2022-26',
              ),
              EducationContainer(
                instituteName: 'Sunbeam English School',
                course: 'Class 12 CBSE Board',
                percentage: ' Percentage 92%',
                extraInfo: 'PCM',
              ),
              EducationContainer(
                instituteName: 'ST Josephs Convent High School',
                course: 'High School',
                percentage: '90%',
                extraInfo: 'Graduated in 2019',
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class EducationContainer extends StatelessWidget {
  final String instituteName;
  final String course;
  final String percentage;
  final String extraInfo;

  EducationContainer({
    required this.instituteName,
    required this.course,
    required this.percentage,
    required this.extraInfo,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.all(8),
      
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            instituteName,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Text('Course: $course'),
          Text('Percentage: $percentage'),
          Text(extraInfo),
        ],
      ),
    );
  }
}

class SkillWidgetDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8),
              child: SkillWidget(
                  skill: 'Flutter',
                  color: Colors.blue,
                  icon: Icons.flutter_dash),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8),
              child: SkillWidget(
                  skill: 'Dart', color: Colors.green, icon: Icons.code),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8),
              child: SkillWidget(
                  skill: 'C++', color: Colors.orange, icon: Icons.code),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8),
              child: SkillWidget(
                  skill: 'HTML', color: Colors.greenAccent, icon: Icons.html),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8),
              child: SkillWidget(
                  skill: 'CSS', color: Colors.amberAccent, icon: Icons.css),
            ),
          ],
        ),
      ),
    );
  }
}

class SkillWidget extends StatelessWidget {
  final String skill;
  final Color color;
  final IconData icon;

  const SkillWidget(
      {required this.skill, required this.color, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: <Widget>[
          Icon(
            icon,
            color: Colors.white,
            size: 24,
          ),
          const SizedBox(width: 8),
          Text(
            skill,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}

class ProjectViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            ProjectView(
              projectName: 'Bank Management System',
              description: 'A system for managing bank operations.',
              color: Colors.blue,
            ),
            const SizedBox(height: 16), // Add vertical spacing between projects
            ProjectView(
              projectName: 'Basic Hotel Management System',
              description:
                  'A system for managing hotel reservations and bookings.',
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}

class ProjectView extends StatelessWidget {
  final String projectName;
  final String description;
  final Color color;

  ProjectView(
      {required this.projectName,
      required this.description,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            projectName,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            description,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('My Profile'),
      // ),
      backgroundColor: Colors.deepPurple,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const CircleAvatar(
              radius: 75,
              backgroundImage: AssetImage('assets/profile.jpg'),
            ),
            const SizedBox(height: 20),
            const Text(
              'Naman Jain',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: const Text(
                'Software Developer',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
