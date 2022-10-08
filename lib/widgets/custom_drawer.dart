import 'package:chronos/constants/constants.dart';
import 'package:chronos/pages/view_saved_ads.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: drawerHeaderColor,
              ),
              child: Padding(padding: EdgeInsets.all(MediaQuery.of(context).size.width/100),child: CircleAvatar(
                radius: MediaQuery.of(context).size.width/4,
                backgroundColor: drawerHeaderColor,
                child: Padding(padding: EdgeInsets.all( MediaQuery.of(context).size.width/50), child: Image.network(logoUrl)),),
                // backgroundImage: NetworkImage(logoUrl, scale: MediaQuery.of(context).size.width),
              ),),
            // Favourite stores
            ListTile(
              leading: const Icon(Icons.bookmark_outlined, color: iconColor,),
              title: const Text('Stories you are following', style: TextStyle(color: textColor),),
              trailing: const Icon(Icons.arrow_forward_ios_rounded, color: iconColor,),
              onTap: () {
                //go to favourites page
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const ViewSavedAds()));
              },
            ),
            // Share the application
            ListTile(
              leading: const Icon(Icons.share, color: iconColor,),
              title: const Text('Share Chronos!', style: TextStyle(color: textColor),),
              trailing: const Icon(Icons.arrow_forward_ios_rounded, color: iconColor,),
              onTap: () {
                //share the application

              },
            ),
            // Follow us on our socials
            ListTile(
              leading: const Icon(Icons.contacts_rounded, color: iconColor,),
              title: const Text('Follow us on our socials!', style: TextStyle(color: textColor),),
              trailing: const Icon(Icons.arrow_forward_ios_rounded, color: iconColor,),
              onTap: () {
                //open dialog to icon buttons to socials

              },
            ),
            // Rate our application
            ListTile(
              leading: const Icon(Icons.rate_review_outlined, color: iconColor,),
              title: const Text('Rate Chronos', style: TextStyle(color: textColor),),
              trailing: const Icon(Icons.arrow_forward_ios_rounded, color: iconColor,),
              onTap: () {
                //go to ratings page on store

              },
            ),
            // report a bug
            ListTile(
              leading: const Icon(Icons.bug_report_rounded, color: iconColor,),
              title: const Text('Report a bug', style: TextStyle(color: textColor),),
              trailing: const Icon(Icons.arrow_forward_ios_rounded, color: iconColor,),
              onTap: () {
                //send email report

              },
            ),
            // contact us
            ListTile(
              leading: const Icon(Icons.email, color: iconColor,),
              title: const Text('Contact us', style: TextStyle(color: textColor),),
              trailing: const Icon(Icons.arrow_forward_ios_rounded, color: iconColor,),
              onTap: () {
                //Email intent

              },
            ),
            // Sign out
            ListTile(
              leading: const Icon(Icons.login_outlined, color: iconColor,),
              title: const Text('Sign out', style: TextStyle(color: textColor),),
              trailing: const Icon(Icons.waving_hand_rounded, color: iconColor,),
              onTap: () {
                //logout

              },
            )
          ],
        )
    );
  }
}