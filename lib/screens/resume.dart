import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../alerts/alerts.dart';
import '../models/models.dart';
import '../widgets/widgets.dart';

class ResumeScreen extends StatelessWidget {
  const ResumeScreen({Key? key}) : super(key: key);
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
              title: Text(ScreenTitles.resume),
              actions: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.edit_outlined,
                  ),
                  onPressed: () => loginAlert(context),
                ),
              ],
            ),
            drawer: displayMobileLayout
                ? const AppDrawer(
              permanentlyDisplay: false,
            )
                : null,
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 20.0),
                  _buildHeader(),
                  Container(
                    margin: const EdgeInsets.all(16.0),
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                        'For the past year, I have been working as a full-time freelance software developer, and my specialty is on web design & development, content management systems (CMS), E-Commerce, etc. Before that, I worked as a research assistant under a North South University teacher & published my research paper on water quality monitoring system, at the University of Indonesia, Jakarta. In addition to that, I have a BSc degree in Computer Science & Engineering from North South University and receive the best project award from the "Capstone Project Showcase" competition, organized by ACM Student Chapter, NSU.',
                        textAlign: TextAlign.justify),
                  ),
                  _buildTitle("Skills"),
                  SizedBox(height: 10.0),
                  _buildSkillRow("HTML", 0.90),
                  SizedBox(height: 5.0),
                  _buildSkillRow("CSS", 0.75),
                  SizedBox(height: 5.0),
                  _buildSkillRow("JavaScript", 0.65),
                  SizedBox(height: 5.0),
                  _buildSkillRow("Flutter", 0.85),
                  SizedBox(height: 5.0),
                  _buildSkillRow("Dart", 0.76),
                  SizedBox(height: 5.0),
                  _buildSkillRow("Adobe XD", 0.5),
                  SizedBox(height: 30.0),
                  _buildTitle("Experience"),
                  _buildExperienceRow(
                    company: "TajaKhobor.news",
                    position: "Founder & CEO",
                    duration: "2020 - Current",
                  ),
                  _buildExperienceRow(
                    company: "Freelancer",
                    position: "Flutter Developer",
                    duration: "2019 - 2020",
                  ),
                  _buildExperienceRow(
                    company: "North South University",
                    position: "Research Assistant",
                    duration: "2018 - 2019",
                  ),
                  SizedBox(height: 20.0),
                  _buildTitle("Award"),
                  SizedBox(height: 5.0),
                  _buildExperienceRow(
                    company: "IEEE IRC-STF Travel Grant, R10HTC 2019",
                    position: "University of Indonesia, Jakarta",
                    duration: "2019",
                  ),
                  _buildExperienceRow(
                    company: "Champion in Project Showcase, ICREST 2019",
                    position: "American International University-Bangladesh",
                    duration: "2019",
                  ),
                  _buildExperienceRow(
                    company:
                    "Champion in Final Year Capstone Design Project Showcase, Summer 2018",
                    position: "North South University",
                    duration: "2018",
                  ),
                  SizedBox(height: 20.0),
                  _buildTitle("Education"),
                  SizedBox(height: 5.0),
                  _buildExperienceRow(
                    company: "North South University",
                    position: "B.Sc. Computer Science and Engineering",
                    duration: "2013 - 2018",
                  ),
                  _buildExperienceRow(
                      company: "Manarat Dhaka International College",
                      position: "A Level",
                      duration: "2010 - 2012"),
                  _buildExperienceRow(
                      company: "Manarat Dhaka International College",
                      position: "O Level",
                      duration: "2009 - 2010"),
                  SizedBox(height: 20.0),
                  _buildTitle("Contact"),
                  SizedBox(height: 5.0),
                  Row(
                    children: <Widget>[
                      SizedBox(width: 30.0),
                      Icon(
                        Icons.mail,
                      ),
                      SizedBox(width: 10.0),
                      Text(
                        "info.tajakhobor@gmail.com",
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    children: <Widget>[
                      SizedBox(width: 30.0),
                      Icon(
                        Icons.phone,
                      ),
                      SizedBox(width: 10.0),
                      Text(
                        "+880-1755997775",
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ],
                  ),
                  _buildSocialsRow(),
                  SizedBox(height: 20.0),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

  Row _buildSocialsRow() {
    return Row(
      children: <Widget>[
        SizedBox(width: 20.0),
        IconButton(
          color: Colors.blue,
          icon: Icon(FontAwesomeIcons.linkedin),
          onPressed: () {
            _launchURL("https://www.linkedin.com/in/md-siam-09703b184/");
          },
        ),
        SizedBox(width: 5.0),
        IconButton(
          color: Colors.indigo,
          icon: Icon(FontAwesomeIcons.github),
          onPressed: () {
            _launchURL("https://github.com/md-siam");
          },
        ),
        SizedBox(width: 5.0),
        IconButton(
          color: Colors.teal,
          icon: Icon(FontAwesomeIcons.globeAmericas),
          onPressed: () {
            _launchURL("https://mdsiam.xyz/");
          },
        ),
        SizedBox(width: 10.0),
      ],
    );
  }

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  ListTile _buildExperienceRow(
      {required String company, String? position, String? duration}) {
    return ListTile(
      leading: Padding(
        padding: const EdgeInsets.only(top: 8.0, left: 20.0),
        child: Icon(
          FontAwesomeIcons.solidCircle,
          size: 12.0,
        ),
      ),
      title: Text(
        company,
      ),
      subtitle: Text("$position ($duration)"),
    );
  }

  Row _buildSkillRow(String skill, double level) {
    return Row(
      children: <Widget>[
        SizedBox(width: 16.0),
        Expanded(
            flex: 2,
            child: Text(
              skill.toUpperCase(),
              textAlign: TextAlign.right,
            )),
        SizedBox(width: 10.0),
        Expanded(
          flex: 5,
          child: LinearProgressIndicator(
            backgroundColor: Colors.grey,
            value: level,
            valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
          ),
        ),
        SizedBox(width: 16.0),
      ],
    );
  }

  Widget _buildTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title.toUpperCase(),
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          ),
          Divider(
              //color: Colors.tealAccent,
              ),
        ],
      ),
    );
  }

  Row _buildHeader() {
    return Row(
      children: <Widget>[
        SizedBox(width: 20.0),
        Container(
          width: 80.0,
          height: 80.0,
          child: CircleAvatar(
            radius: 40,
            backgroundColor: Colors.grey,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 35.0,
              backgroundImage: ExactAssetImage('assets/images/main/mdsiam.png'),
            ),
          ),
        ),
        SizedBox(width: 20.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Md.Siam",
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text("Full-Stack Software Developer"),
            SizedBox(height: 5.0),
            Row(
              children: <Widget>[
                Icon(
                  FontAwesomeIcons.map,
                  size: 12.0,
                ),
                SizedBox(width: 10.0),
                Text(
                  "Dhaka, Bangladesh",
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
