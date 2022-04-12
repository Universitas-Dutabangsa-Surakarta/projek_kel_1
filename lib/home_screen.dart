import 'package:flutter/material.dart';
import 'package:projek_kel_1/login_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Text('Welcome',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
          Image.asset('assets/images/undraw_new_ideas_jdea.png'),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 250,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => LoginScreen()),
                    );
                  },
                  child: Text('Login'),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: 250,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.grey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: () {},
                  child: Text('Signup'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
