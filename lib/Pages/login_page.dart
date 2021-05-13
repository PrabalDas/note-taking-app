import 'package:flutter/material.dart';
import 'package:note_taking_app/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changedButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/images/undraw_secure_login_pdn4.png',
                fit: BoxFit.contain),
            SizedBox(
              height: 20,
            ),
            Text(
              "Welcome $name!",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
              child: Column(
                children: [
                  TextFormField(
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                    decoration: InputDecoration(
                        hintText: "Enter UserName", labelText: "UserName"),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Enter Password", labelText: "Password"),
                  ),
                  SizedBox(
                    height: 40,
                  ),

                  InkWell(
                    onTap: () async {
                      setState(() {
                        changedButton = true;
                      });

                      await Future.delayed(Duration(milliseconds: 500));
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                    child: AnimatedContainer(
                      curve: Curves.easeIn,
                      duration: Duration(milliseconds: 500),
                      alignment: Alignment.center,
                      height: 50,
                      width: changedButton ? 50 : 150,
                      child: changedButton
                          ? Icon(
                              Icons.done,
                              color: Colors.white,
                            )
                          : Text(
                              "Login",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                      decoration: BoxDecoration(
                        // shape: changedButton
                        //     ? BoxShape.circle
                        // : BoxShape.crectangle,
                        borderRadius:
                            BorderRadius.circular(changedButton ? 50 : 8),
                        color: Colors.deepPurple,
                      ),
                    ),
                  )
                  // ElevatedButton(
                  //   onPressed: () {
                  //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                  //   },
                  //   child: Text("Login"),
                  //   style: TextButton.styleFrom(minimumSize: Size(150, 40)),
                  // )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
