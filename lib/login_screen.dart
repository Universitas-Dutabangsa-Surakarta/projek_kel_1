import 'package:flutter/material.dart';
import 'package:projek_kel_1/list_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool hidePass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Text('Login',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
          Expanded(
              child: Image.asset(
            'assets/images/undraw_Specs_re_546x.png',
            height: 1000,
          )),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
            child: TextFormField(
              controller: userNameController,
              decoration: InputDecoration(
                label: Text('Username'),
                hintText: 'Masukkan username',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
            child: TextFormField(
              controller: passwordController,
              obscureText: hidePass,
              decoration: InputDecoration(
                label: Text('Password'),
                hintText: 'Masukkan password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                suffixIcon: IconButton(
                  onPressed: () {
                    print('hide pass = $hidePass');
                    setState(() {
                      hidePass = !hidePass;
                    });
                  },
                  icon:
                      Icon(hidePass ? Icons.visibility : Icons.visibility_off),
                ),
              ),
            ),
          ),
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
                if (userNameController.text == 'budi' &&
                    passwordController.text == "123") {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('berhasil login'),
                    ),
                  );
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => ListScreen()),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('username atau password salah'),
                    ),
                  );
                }
              },
              child: Text('Login'),
            ),
          ),
        ],
      ),
    );
  }
}
