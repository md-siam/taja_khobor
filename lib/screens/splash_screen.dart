import 'package:flutter/material.dart';
import '../authentications/authentications.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  _SplashScreen createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Welcome to TajaKhobor",
              style: Theme.of(context).textTheme.headline5,
              textAlign: TextAlign.center,
            ),
            Text(
              "Explore Us",
              style: Theme.of(context).textTheme.headline6,
              textAlign: TextAlign.center,
            ),
            const Flexible(
              child: Image(
                image: AssetImage('assets/images/main/newspaper.png'),
                width: double.infinity,
              ),
            ),
            Center(
              child: ElevatedButton(
                style: const ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll<Color>(Colors.green),
                ),
                child: Text(
                  "Start",
                  style: Theme.of(context)
                      .textTheme
                      .button!
                      .copyWith(color: Colors.white),
                ),
                onPressed: () => Navigator.pushNamed(context, '/home'),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't have an account?"),
                const SizedBox(width: 5),
                TextButton(
                  child: Text(
                    "Create One",
                    style: Theme.of(context)
                        .textTheme
                        .button!
                        .copyWith(color: Colors.blueAccent),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
