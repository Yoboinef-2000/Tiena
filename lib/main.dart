import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blue,
        fontFamily: 'Roboto',
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.lightBlue),
          ),
        ),
      ),
      home: LoginPage(),
    );
  }
}




class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blue,
        fontFamily: 'Roboto',
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.lightBlue),
          ),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Hola!',
            style: TextStyle(
              fontFamily: 'Pacifico',
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.lightBlue,
            ),
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/TienaBackgroundImage.jpeg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Sign in',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Username',
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Password',
                    filled: true,
                    fillColor: Colors.white,
                  ),
                  obscureText: true,
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Forgot password?',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Login'),
                ),
                TextButton(
                  onPressed: () {
                    print('Sign Up button pressed');
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUpPage()),
                    );
                  },
                  child: Text(
                    'Sign up',
                    style: TextStyle(color: Colors.blueAccent),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Create Your Account',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
            fontFamily: 'Pacifico', // Added font family
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: 'First Name',
                hintText: 'Enter your first name',
              ),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: 'Last Name',
                hintText: 'Enter your last name',
              ),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: 'Date of Birth',
                hintText: 'MM/DD/YYYY',
              ),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: 'Sex',
                hintText: 'Male/Female/Other',
              ),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: 'Phone Number',
                hintText: 'Enter your phone number',
              ),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: 'Street Address',
                hintText: 'Enter your street address',
              ),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: 'City',
                hintText: 'Enter your city',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                print('Continue button pressed');
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WelcomePage()),
                );
              },
              child: Text('Continue'),
            ),
          ],
        ),
      ),
    );
  }
}


class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Welcome User',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
            fontFamily: 'Pacifico', // Added font family
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/WelcomePageBackgroundImage.jpg'), // Replace 'background.jpg' with your image path
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Text(
                'Welcome!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'We’re thrilled to have you on board. Here at Tiena, we strive to provide you with the best healthcare experience.',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'What would you like to do today?',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  print('Request a visit button pressed');
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DoctorListPage()),
                  );
                },
                child: Text('Request a Visit'),
              ),
              SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  // Implement other actions
                },
                child: Text(
                  'View Medical Records',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              TextButton(
                onPressed: () {
                  // Implement other actions
                },
                child: Text(
                  'Get Health Tips',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              TextButton(
                onPressed: () {
                  // Implement other actions
                },
                child: Text(
                  'Manage Appointments',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              TextButton(
                onPressed: () {
                  // Implement other actions
                },
                child: Text(
                  'Explore Services',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DoctorListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Request a Visit',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
            fontFamily: 'Pacifico', // Added font family
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView( // Wrap with SingleChildScrollView
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Text(
                'Select a Doctor:',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              // List of doctors to select from
              DoctorItem(
                name: 'Dr. Haile',
                skills: 'Pediatrician, Internal Medicine',
                workplace: 'Balcha Lideta Hospital',
                details: 'Dr. Haile is a highly skilled pediatrician with over 10 years of experience in internal medicine. He is passionate about providing the best care for children and has a warm and friendly demeanor.',
              ),
              SizedBox(height: 10),
              DoctorItem(
                name: 'Dr. Yemane',
                skills: 'Cardiologist, Electrophysiologist',
                workplace: 'Bole Cardiac Center',
                details: 'Dr. Yemane specializes in cardiology and electrophysiology. He has expertise in diagnosing and treating various heart conditions and is known for his dedication to patient care and innovative treatment approaches.',
              ),
              SizedBox(height: 10),
              DoctorItem(
                name: 'Dr. Garnacho',
                skills: 'Orthopedic Surgeon',
                workplace: 'Merkato OrthoCare Clinic',
                details: 'Dr. Garnacho is an experienced orthopedic surgeon who specializes in joint replacement surgeries and sports medicine. He is committed to helping patients regain mobility and improve their quality of life.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class DoctorItem extends StatelessWidget {
  final String name;
  final String skills;
  final String workplace;
  final String details;

  DoctorItem({
    required this.name,
    required this.skills,
    required this.workplace,
    required this.details,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blueAccent),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5),
          Text(
            'Skills: $skills',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          Text(
            'Workplace: $workplace',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          SizedBox(height: 5),
          Text(
            details,
            style: TextStyle(
              fontSize: 14,
            ),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              print('$name selected for visit');
              // Implement visit request logic here
            },
            child: Text('Request Visit'),
          ),
        ],
      ),
    );
  }
}
