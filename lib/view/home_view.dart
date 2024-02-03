import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'RegisterView.dart';

class Anasayfa extends StatelessWidget {
  const Anasayfa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 60,
                ),
            
            
                const Text (
                  'Profile App',
                  style: TextStyle(fontSize: 24.5),
                ),
                ClipOval(
                  child: Container(
                    width: 120.0,
                    height: 120.0,
                    child: Image.network(
                      'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                const Center(
                    child: Text(
                      "Login",
                      style: TextStyle(fontSize: 24.5),
                    )),
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextField(
                    decoration:  InputDecoration(
                        hintText: "Email",
                    border: OutlineInputBorder(
                      borderRadius:
                        BorderRadius.circular(10.0),
                    )
                    ),
            
                  ),
                ),
            
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextField(
                    decoration:  InputDecoration(
                        hintText: "Password",
                    border: OutlineInputBorder(
                      borderRadius:
                        BorderRadius.circular(10.0),
            
                    )
                    ),
            
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 50,
                    left: 20,
                    right: 20,
                    bottom: 10,
                  ),
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () async {
                          print("Burada");
            
                            },
                        child: const Text("Login")),
                  ),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegisterView()));
                    },
                    child: const Text("Register Here"))
            
            
              ],
            ),
          ),
        ),
      ),
    );
  }
}