
import 'package:chronos/objects/client.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// Color of the app bar
const Color appBarColor = Colors.white;

// Color of the application
const Color backgroundColor = Colors.white;

// Color of the icon theme data
const Color iconThemeDataColor = Colors.black;

// Color of text
const Color textColor = Colors.black;

const Color dialogBoxBackgroundColor = Colors.transparent;

// the shadow color of the card'
const Color shadowColor = Colors.black;

// drawer header color
const Color drawerHeaderColor = Colors.white;

// icon color
const Color iconColor = Colors.grey;

// logo url
const String logoUrl = 'https://firebasestorage.googleapis.com/v0/b/coupons-are-us.appspot.com/o/Chronos%20logo%20(2).png?alt=media&token=c276a95d-3279-424e-b900-5ff1243420b4';

const String shareAppUrl = 'https://www.sizibamthandazo.dev';
// size width and height
 double screenWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

double screenHeight(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

// the chronos client object
Client chronosClient = Client(
    name: 'Chronos', networkImage: logoUrl,
    website:'https://www.sizibamthandazo.dev', primarySocialNetwork: '',
    about: ''
);

// URL launcher methods

Future<void> launchUrlWithIntent (String url) async {
  if (!await launchUrl(Uri.parse(url))){
    throw 'Could not launch $url';
  }
}//end method

String? encodeQueryParameters(Map<String, String> params) {
  return params.entries
      .map((MapEntry<String, String> e) =>
  '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
      .join('&');
}

void launchEmailIntent(String mailto , String subject) {
  final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: mailto,
      query: encodeQueryParameters(<String, String>{
        'subject' : subject
      })

  );

  launchUrl(emailLaunchUri);
}//end method

// making the nav bar hideable

 ScrollController scrollController = ScrollController();

