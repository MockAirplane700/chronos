
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

// the shadow color of the card'
const Color shadowColor = Colors.black;

// drawer header color
const Color drawerHeaderColor = Colors.white;

// icon color
const Color iconColor = Colors.grey;

// logo url
const String logoUrl = 'https://i.pinimg.com/564x/d0/e3/87/d0e3877bcf25be88f51fb32e5541d0e1.jpg';

// size width and height
 double screenWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

double screenHeight(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

// the chronos client object
Client chronosClient = Client(
    name: 'Chronos', networkImage: 'https://i.pinimg.com/564x/d0/e3/87/d0e3877bcf25be88f51fb32e5541d0e1.jpg',
    website:'https://www.sizibamthandazo.dev', primarySocialNetwork: '',
    about: ''
);

// URL launcher methods

Future<void> launchUrlWithIntent (String url) async {
  if (!await launchUrl(Uri.parse(url))){
    throw 'Could not launch $url';
  }
}//end method

// making the nav bar hideable

final ScrollController scrollController = ScrollController();

