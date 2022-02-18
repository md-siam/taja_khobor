import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../models/models.dart';
import '../widgets/widgets.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final bool displayMobileLayout = MediaQuery.of(context).size.width < 600;
    return Row(
      children: [
        if (!displayMobileLayout)
          const AppDrawer(
            permanentlyDisplay: true,
          ),
        Expanded(
          child: Scaffold(
            appBar: AppBar(
              // when the app isn't displaying the mobile version of app, hide the menu button that is used to open the navigation drawer
              automaticallyImplyLeading: displayMobileLayout,
              iconTheme: IconThemeData(color: Theme.of(context).buttonColor),
              title: const Text(ScreenTitles.settings),
            ),
            drawer: displayMobileLayout
                ? const AppDrawer(
                    permanentlyDisplay: false,
                  )
                : null,
            body: SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    "ACCOUNT",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Card(
                    color: Theme.of(context).cardColor,
                    elevation: 0.5,
                    margin: const EdgeInsets.symmetric(
                      vertical: 4.0,
                      horizontal: 0,
                    ),
                    child: Column(
                      children: <Widget>[
                        ListTile(
                          leading: const CircleAvatar(
                            backgroundColor: Colors.white,
                            backgroundImage: ExactAssetImage(
                                'assets/images/main/mdsiam.png'),
                          ),
                          title:const  Text("Md. Siam"),
                          onTap: () {},
                        ),
                        _buildDivider(),
                        ListTile(
                          leading: Icon(FontAwesomeIcons.lock),
                          title: Text("Change Password"),
                          trailing: Icon(Icons.keyboard_arrow_right),
                          onTap: () {
                            print('Change password'); //open change password
                          },
                        ),
                        _buildDivider(),
                        ListTile(
                          leading: const Icon(FontAwesomeIcons.userCog),
                          title:const  Text("User Configuration"),
                          trailing: Icon(Icons.keyboard_arrow_right),
                          onTap: () {
                            print('User Configuration'); //open change password
                          },
                        ),
                        _buildDivider(),
                        ListTile(
                          leading: Icon(FontAwesomeIcons.mapMarkedAlt),
                          title: Text("Change Location"),
                          trailing: Icon(Icons.keyboard_arrow_right),
                          onTap: () {
                            print('Change location'); //open change location
                          },
                        ),
                        _buildDivider(),
                        ListTile(
                          leading: Icon(FontAwesomeIcons.textHeight),
                          title: Text("Text Size"),
                          trailing: Icon(Icons.keyboard_arrow_right),
                          onTap: () {
                            print('Text Size'); //open change location
                          },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  Text(
                    "TTS",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Card(
                    color: Theme.of(context).cardColor,
                    elevation: 0.5,
                    margin: const EdgeInsets.symmetric(
                      vertical: 4.0,
                      horizontal: 0,
                    ),
                    child: Column(
                      children: <Widget>[
                        ListTile(
                          leading: Icon(FontAwesomeIcons.language),
                          title: Text("Language"),
                          trailing: Icon(Icons.keyboard_arrow_right),
                          onTap: () {
                            print('Language'); //open change language
                          },
                        ),
                        _buildDivider(),
                        ListTile(
                          leading: Icon(FontAwesomeIcons.volumeUp),
                          title: Text("Volume"),
                          trailing: Icon(Icons.keyboard_arrow_right),
                          onTap: () {
                            print('Volume'); //set default volume
                          },
                        ),
                        _buildDivider(),
                        ListTile(
                          leading: Icon(FontAwesomeIcons.magic),
                          title: Text("Pitch"),
                          trailing: Icon(Icons.keyboard_arrow_right),
                          onTap: () {
                            print('Pitch'); //set default pitch
                          },
                        ),
                        _buildDivider(),
                        ListTile(
                          leading: Icon(FontAwesomeIcons.tachometerAlt),
                          title: Text("Speed"),
                          trailing: Icon(Icons.keyboard_arrow_right),
                          onTap: () {
                            print('Speed'); //set default speed
                          },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  Text(
                    "Cache",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Card(
                    color: Theme.of(context).cardColor,
                    elevation: 0.5,
                    margin: const EdgeInsets.symmetric(
                      vertical: 4.0,
                      horizontal: 0,
                    ),
                    child: Column(
                      children: <Widget>[
                        ListTile(
                          leading: Icon(FontAwesomeIcons.solidImage),
                          title: Text("App Image Quality"),
                          trailing: Icon(Icons.keyboard_arrow_right),
                          onTap: () {
                            print('App Image Quality'); //open change language
                          },
                        ),
                        _buildDivider(),
                        ListTile(
                          leading: Icon(FontAwesomeIcons.film),
                          title: Text("App Video Preferences"),
                          trailing: Icon(Icons.keyboard_arrow_right),
                          onTap: () {
                            print('App Video Preferences'); //set default volume
                          },
                        ),
                        _buildDivider(),
                        ListTile(
                          leading: Icon(FontAwesomeIcons.solidTrashAlt),
                          title: Text("Clear Cache"),
                          trailing: Icon(Icons.keyboard_arrow_right),
                          onTap: () {
                            print('Clear Cache'); //set default pitch
                          },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  Text(
                    "THEMES",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Card(
                    color: Theme.of(context).cardColor,
                    elevation: 0.5,
                    margin: const EdgeInsets.symmetric(
                      vertical: 4.0,
                      horizontal: 0,
                    ),
                    child: Column(
                      children: <Widget>[
                        SwitchListTile.adaptive(
                          activeColor: Colors.blue,
                          value: true,
                          title: const Text("System Theme Mode"),
                          onChanged: (val) {},
                        ),
                        _buildDivider(),
                        SwitchListTile.adaptive(
                          activeColor: Colors.blue,
                          value: false,
                          title: const Text("Dark Mode"),
                          onChanged: null,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  const Text(
                    "PUSH NOTIFICATIONS",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                  Card(
                    //color: Theme.of(conconst Text).accentColor,
                    margin: const EdgeInsets.symmetric(
                      vertical: 8.0,
                      horizontal: 0,
                    ),
                    child: Column(
                      children: <Widget>[
                        SwitchListTile.adaptive(
                          activeColor: Colors.blue,
                          value: true,
                          title: const Text("Received notification"),
                          onChanged: (val) {},
                        ),
                        _buildDivider(),
                        SwitchListTile.adaptive(
                          activeColor: Colors.blue,
                          value: true,
                          title: const Text("Received newsletter"),
                          onChanged: (val) {},
                        ),
                        _buildDivider(),
                        SwitchListTile.adaptive(
                          activeColor: Colors.blue,
                          value: false,
                          title: const Text("Received Offer Notification"),
                          onChanged: null,
                        ),
                        _buildDivider(),
                        SwitchListTile.adaptive(
                          activeColor: Colors.blue,
                          value: true,
                          title: const Text("Received App Updates"),
                          onChanged: (val) {},
                        ),
                      ],
                    ),
                  ),
                  Card(
                    color: Theme.of(context).cardColor,
                    margin: const EdgeInsets.symmetric(
                      vertical: 8.0,
                      horizontal: 0,
                    ),
                    child: ListTile(
                      leading: Icon(FontAwesomeIcons.signOutAlt),
                      title: const Text("Logout"),
                      onTap: () {
                        print('Logout'); //logout
                      },
                    ),
                  ),
                  const SizedBox(height: 60.0),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Container _buildDivider() {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 8.0,
      ),
      width: double.infinity,
      height: 1.0,
      color: Colors.grey.shade300,
    );
  }
}
