import 'package:flutter/material.dart';

void main() {
  runApp(LoginPage());
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
                  onPressed: () {},
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



