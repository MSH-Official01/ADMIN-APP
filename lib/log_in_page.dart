import 'package:flutter/material.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Center(
          child: Container(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Welcom to Admin",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    children: [
                      Text(
                        "Email",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.normal,
                            color: Colors.black),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  TextField(
                    controller: _emailController,
                    decoration: InputDecoration(
                        hintText: 'Enter Email',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0))),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Row(
                    children: [
                      Text(
                        "Password",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.normal,
                            color: Colors.black),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  TextField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                        hintText: 'Enter Password',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0))),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  ElevatedButton(onPressed: () {}, child: Text('Log In'))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
