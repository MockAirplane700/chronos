import 'package:chronos/constants/constants.dart';
import 'package:chronos/pages/client_listing_page.dart';
import 'package:chronos/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hidable/hidable.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  final int selectedIndex;
  
  const CustomBottomNavigationBar({Key? key , required this.selectedIndex}) : super(key: key);

  @override
  State<CustomBottomNavigationBar> createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    int selectedIndex = widget.selectedIndex;
    
    return Hidable(
      controller: scrollController,
      wOpacity: true,
      child: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.bookOpenReader) ,label: 'Home' ),
          BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.userTie) ,label: 'Clients' ),
        ],
        currentIndex: selectedIndex,
        onTap: (int index) {
            selectedIndex = index;

            if (index == 0) {
              // the ad stories page
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const Home()));
            }else{
              // go to the client listing page
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const ClientsPage()));

            }//end if-else
        },
      ),
    );
  }
}
