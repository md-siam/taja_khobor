import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'signup.dart';

class LoginPage extends StatelessWidget {
  Widget _buildPageContent(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          SizedBox(height: 30.0),
          _buildLoginForm(context),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => SignupPage(),
                    ),
                  );
                },
                child: Text(
                  "Sign Up",
                  style: TextStyle(color: Colors.blue, fontSize: 18.0),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Container _buildLoginForm(context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Stack(
        children: <Widget>[
          ClipPath(
            clipper: RoundedDiagonalPathClipper(),
            child: Container(
              height: 400,
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(40.0),
                ),
                color: Theme.of(context).cardColor,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 90.0,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "01700000000",
                        border: InputBorder.none,
                        icon: Icon(
                          Icons.smartphone,
                          color: Theme.of(context).buttonColor,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Divider(
                      color: Colors.blue.shade400,
                    ),
                    padding:
                        EdgeInsets.only(left: 20.0, right: 20.0, bottom: 10.0),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Password",
                        border: InputBorder.none,
                        icon: Icon(
                          Icons.lock,
                          color: Theme.of(context).buttonColor,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Divider(color: Colors.blue.shade400),
                    padding:
                        EdgeInsets.only(left: 20.0, right: 20.0, bottom: 10.0),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(right: 20.0),
                        child: Text("Forgot Password"),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 40.0,
                backgroundColor: Colors.blue,
                child: Icon(
                  FontAwesomeIcons.signInAlt,
                  color: Theme.of(context).cardColor,
                ),
              ),
            ],
          ),
          Container(
            height: 420,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: RaisedButton(
                onPressed: () => print("Login pressed!"),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40.0),
                ),
                child: Text(
                  "Login",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.blue,
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
        iconTheme: IconThemeData(color: Theme.of(context).buttonColor),
      ),
      body: _buildPageContent(context),
    );
  }
}
