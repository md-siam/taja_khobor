<img src="screenshots/badges/built-with-love.svg" height="28px"/>&nbsp;&nbsp;
<img src="screenshots/badges/flutter-dart.svg" height="28px" />&nbsp;&nbsp;
<a href="https://choosealicense.com/licenses/mit/" target="_blank"><img src="screenshots/badges/license-MIT.svg" height="28px" /></a>&nbsp;&nbsp;
<img src="screenshots/badges/dart-null_safety-blue.svg" height="28px"/>

# Taja Khobor

<img align="right" src="screenshots/stores_logos/playstore.png" height="190"></img>

<p align="justify" >
Taja Khobor a mobile application that will use the machine learning algorithm to personalize news according to individual taste. In addition to that, it will provide comfort to your eyes by reading aloud newspaper in both Bangla & English.
</p>
<p align="justify">
Each year, we are chopping down millions of trees worldwide in the name of producing newspapers for everyone. This inhuman act of ours is amplifying the risk of Global warming. If anyone asks a newspaper company about the number of trees they have chopped for making newspapers, then they will say that they recycle all the newspapers. But in reality, it's impossible to recycle any paper 100% without any waste paper. For that reason, there is always a demand for fresh paper.
Another major problem with our newspaper is it always starts with a piece of bad news. Who wants to start their day with bad news? In addition to that, a newspaper contains so much irrelevant news that it requires a proper filtration system. Each people are unique & require their own set of news. It's where the machine-learning algorithm comes in, and its job is to filter out news for an individual taste. 
In conclusion, Taja Khobor application providing a sustainable way of distributing news to everyone. 
</p>

Note: It's an open-source project; hence anyone can use this code according to the [MIT License](https://choosealicense.com/licenses/mit/) rules & regulations.

## Packages used:

<img align="left" src="screenshots/demo.gif" height="550"></img>

// For using ready-made clippers<br>
[flutter_custom_clippers: ^2.0.0](https://pub.dev/packages/flutter_custom_clippers)<br>
// For custom grid view<br>
[flutter_staggered_grid_view: ^0.6.1](https://pub.dev/packages/flutter_staggered_grid_view)<br>
// For displaying svg images<br>
[flutter_svg: ^1.0.3](https://pub.dev/packages/flutter_svg)<br>
// For converting text-to-speech<br>
[flutter_tts: ^3.3.3](https://pub.dev/packages/flutter_tts)<br>
// For using awesome icons<br>
[font_awesome_flutter: ^9.2.0](https://pub.dev/packages/font_awesome_flutter)<br>
// For using fonts available in google fonts<br>
[google_fonts: ^2.3.1](https://pub.dev/packages/google_fonts)<br>
// For custom pop-up alert<br>
[rflutter_alert: ^2.0.4](https://pub.dev/packages/rflutter_alert)<br>
// For launching specific URLs<br>
[url_launcher: ^6.0.20](https://pub.dev/packages/url_launcher)<br>
// For playing videos<br>
[video_player: ^2.2.18](https://pub.dev/packages/video_player)<br><br><br><br><br><br><br>

## Installation

1. Open your workspace folder in 'Command Prompt' or 'Terminal'
2. Copy & paste this command:

```
$ git clone https://github.com/md-siam/taja_khobor.git
```

3. Open the 'taja_khobor' folder using your Android Studio or VSCode.
4. Use this commands in your Android Studio / VSCode terminal:

```
$ flutter pub get
$ flutter run
```

5. Enjoy!

Note: To run this application on your system, you will need [git](https://git-scm.com/) and [flutter](https://docs.flutter.dev/get-started/install) environment already installed.

## Directory

```
lib
├── alerts
│   ├── alerts.dart
│   ├── login_alert.dart
│   ├── missing_alert.dart
│   └── success_alert.dart
├── authentications
│   ├── authentications.dart
│   ├── login.dart
│   └── signup.dart
├── controllers
│   ├── auction_controller.dart
│   ├── bookmark_controller.dart
│   ├── controllers.dart
│   ├── covid19_controller.dart
│   ├── job_controller.dart
│   └── sale_controller.dart
├── models
│   ├── app_drawer.dart
│   ├── auctions.dart
│   ├── bookmarks.dart
│   ├── covid19.dart
│   ├── jobs.dart
│   ├── models.dart
│   ├── news_bn.dart
│   ├── news_en.dart
│   ├── puzzles.dart
│   ├── sale.dart
│   ├── sports.dart
│   ├── stocks.dart
│   ├── traffic_alert.dart
│   └── wallet.dart
├── screens
│   ├── puzzles
│   │   ├── solitaire
│   │   │   ├── card_column.dart
│   │   │   ├── empty_card.dart
│   │   │   ├── game_screen.dart
│   │   │   ├── playing_card.dart
│   │   │   └── transformed_card.dart
│   │   └── puzzles_screens.dart
│   ├── auctions_details.dart
│   ├── auctions.dart
│   ├── bhejabilai.dart
│   ├── bookmarks.dart
│   ├── covid_19.dart
│   ├── help.dart
│   ├── home.dart
│   ├── jobs_details.dart
│   ├── jobs.dart
│   ├── LIVE_sports.dart
│   ├── news_details.dart
│   ├── referral_credits.dart
│   ├── resume.dart
│   ├── sale.dart
│   ├── screens.dart
│   ├── settings.dart
│   ├── splash_screen.dart
│   ├── stocks.dart
│   ├── traffic_alert.dart
│   ├── transfer_credits.dart
│   └── wallet.dart
├── theme
│   ├── light_color.dart
│   └── theme.dart
├── widgets
│   ├── app_route_observer.dart
│   ├── auctions_categorymenu.dart
│   ├── auctions_container.dart
│   ├── auctions_rating.dart
│   ├── balance_card.dart
│   ├── bookmarks_categorymenu.dart
│   ├── circular_clipper.dart
│   ├── content_scroll.dart
│   ├── covid19_cards.dart
│   ├── covid19_counter.dart
│   ├── covid19_header.dart
│   ├── custom_drawer.dart
│   ├── custom_drawer1.dart
│   ├── jobs_categorymenu.dart
│   ├── jobs_container.dart
│   ├── news_categories.dart
│   ├── puzzles_categorymenu.dart
│   ├── sale_categorymenu.dart
│   ├── sports_categorymenu.dart
│   ├── stocksList.dart
│   ├── stocksNewsList.dart
│   ├── trafficalert_categorymenu.dart
│   ├── trafficalert_container.dart
│   ├── wallethistory_container.dart
│   ├── walletreferral_container.dart
│   ├── walletstatedetail_container.dart
│   ├── wallettransaction_container.dart
│   └── widgets.dart
├── .DS_Store
└── main.dart
```
