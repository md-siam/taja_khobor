import 'package:flutter/material.dart';

import '../controllers/controllers.dart';
import '../models/models.dart';
import '../widgets/widgets.dart';

class COVID19Screen extends StatefulWidget {
  const COVID19Screen({Key? key}) : super(key: key);
  @override
  _COVID19ScreenState createState() => _COVID19ScreenState();
}

class _COVID19ScreenState extends State<COVID19Screen> {
  final controller = ScrollController();
  double offset = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.addListener(onScroll);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  void onScroll() {
    setState(() {
      offset = (controller.hasClients) ? controller.offset : 0;
    });
  }

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
              title: const Text(ScreenTitles.covid19),
            ),
            drawer: displayMobileLayout
                ? const AppDrawer(
                    permanentlyDisplay: false,
                  )
                : null,
            body: SingleChildScrollView(
              controller: controller,
              child: Column(
                children: <Widget>[
                  COVID19Header(
                    image: "assets/images/COVID19/coronadr.svg",
                    textTop: "All you need",
                    textBottom: "is wear a mask.",
                    offset: offset,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Case Update\n",
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Theme.of(context).buttonColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const TextSpan(
                                    text: "Newest update $CaseUpdateDate",
                                    style: TextStyle(
                                      color: kTextLightColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Spacer(),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Theme.of(context).cardColor,
                            boxShadow: [
                              BoxShadow(
                                offset: const Offset(0, 4),
                                blurRadius: 30,
                                color: kShadowColor,
                              ),
                            ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              COVID19Counter(
                                color: COVID19_Info[0].color,
                                number: COVID19_Info[0].number,
                                title: COVID19_Info[0].title,
                              ),
                              COVID19Counter(
                                color: COVID19_Info[1].color,
                                number: COVID19_Info[1].number,
                                title: COVID19_Info[1].title,
                              ),
                              COVID19Counter(
                                color: COVID19_Info[2].color,
                                number: COVID19_Info[2].number,
                                title: COVID19_Info[2].title,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 25),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              const Text(
                                "Symptoms",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 20),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    for (var i = 0;
                                        i < COVID19_symp.length;
                                        i++)
                                      SymptomCard(
                                        image: COVID19_symp[i].imageURL,
                                        title: COVID19_symp[i].title,
                                      ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 25),
                              const Text(
                                "Prevention",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 20),
                              for (var i = 0; i < COVID19_prev.length; i++)
                                PreventCard(
                                  text: COVID19_prev[i].text,
                                  image: COVID19_prev[i].imageURL,
                                  title: COVID19_prev[i].title,
                                ),
                              const SizedBox(height: 20),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
