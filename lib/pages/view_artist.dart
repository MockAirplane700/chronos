import 'package:chronos/constants/constants.dart';
import 'package:chronos/objects/artist.dart';
import 'package:chronos/widgets/custom_bottom_nav_bar.dart';
import 'package:chronos/widgets/custom_search_delegate_ad_story.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ViewArtistPage extends StatefulWidget {
  final Artist artist;
  const ViewArtistPage({Key? key , required this.artist }) : super(key: key);

  @override
  State<ViewArtistPage> createState() => _ViewArtistPageState();
}

class _ViewArtistPageState extends State<ViewArtistPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.artist.name, style: const TextStyle(color: textColor),),
        backgroundColor: appBarColor,
        actions: [
          IconButton(
              onPressed: () {
                showSearch(context: context, delegate: CustomSearchDelegateAdStory());
              },
              icon: const Icon(Icons.search)
          )
        ],
        iconTheme: const IconThemeData(color: iconThemeDataColor),
      ),
      backgroundColor: backgroundColor,
      bottomNavigationBar: const CustomBottomNavigationBar(selectedIndex: 0),
      body:  SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              // Image of the artist
              Padding(padding: EdgeInsets.all(screenWidth(context)/50 ) , child: SizedBox(
                width: screenWidth(context),
                height: screenHeight(context)/2,
                child: Image.network(widget.artist.networkImage,),
              ),),
              // About the artist
              const Divider(),
              Padding(padding: EdgeInsets.all(screenWidth(context)/100), child: Text(widget.artist.about, style: const TextStyle(color: textColor),),),
              // City and country their are based in [ List tile]
              const Divider(),
              Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(screenWidth(context)/50)),
                elevation: 3,
                shadowColor: shadowColor,
                child: ListTile(
                  leading: const FaIcon(FontAwesomeIcons.earthAfrica),
                  title: Text(widget.artist.country, style: const TextStyle(color: textColor),),
                  subtitle: Text(widget.artist.city, style: const TextStyle(color: textColor),),
                  trailing: const Icon(Icons.more_vert_rounded),
                ),
              ),
              // link to their portfolio  [ List tile]
              const Divider(),
              Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(screenWidth(context)/50)),
                elevation: 3,
                shadowColor: shadowColor,
                child: ListTile(
                  leading: const FaIcon(FontAwesomeIcons.masksTheater),
                  title:const  Text('Visit my portfolio!', style: TextStyle(color: textColor),),
                  subtitle: Text(widget.artist.portfolio, style: const TextStyle(color: textColor),),
                  trailing: const Icon(Icons.more_vert_rounded),
                  onTap: () {
                    // launch url launcher
                  },
                ),
              ),
              // link to their patreon
              const Divider(),
              Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(screenWidth(context)/50)),
                elevation: 3,
                shadowColor: shadowColor,
                child: ListTile(
                  leading: const FaIcon(FontAwesomeIcons.patreon),
                  title:const  Text('Visit my patreon!', style: TextStyle(color: textColor),),
                  subtitle: Text(widget.artist.patreon, style: const TextStyle(color: textColor),),
                  trailing: const Icon(Icons.more_vert_rounded),
                  onTap: () {
                    // launch url launcher
                  },
                ),
              ),
              // link to their store
              const Divider(),
              Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(screenWidth(context)/50)),
                elevation: 3,
                shadowColor: shadowColor,
                child: ListTile(
                  leading: const FaIcon(FontAwesomeIcons.store),
                  title:const  Text('Visit my store!', style: TextStyle(color: textColor),),
                  subtitle: Text(widget.artist.store, style: const TextStyle(color: textColor),),
                  trailing: const Icon(Icons.more_vert_rounded),
                  onTap: () {
                    // launch url launcher
                  },
                ),
              ),
              // link to their socials [ List tile ]
              // twitter
              const Divider(),
              Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(screenWidth(context)/50)),
                elevation: 3,
                shadowColor: shadowColor,
                child: ListTile(
                  leading: const FaIcon(FontAwesomeIcons.twitter),
                  title:const  Text('Visit my twitter!', style: TextStyle(color: textColor),),
                  subtitle: Text(widget.artist.twitter, style: const TextStyle(color: textColor),),
                  trailing: const Icon(Icons.more_vert_rounded),
                  onTap: () {
                    // launch url launcher
                  },
                ),
              ),
              // tiktok
              const Divider(),
              Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(screenWidth(context)/50)),
                elevation: 3,
                shadowColor: shadowColor,
                child: ListTile(
                  leading: const FaIcon(FontAwesomeIcons.tiktok),
                  title:const  Text('Visit my tiktok!', style: TextStyle(color: textColor),),
                  subtitle: Text(widget.artist.tiktok, style: const TextStyle(color: textColor),),
                  trailing: const Icon(Icons.more_vert_rounded),
                  onTap: () {
                    // launch url launcher
                  },
                ),
              ),
              // instagram
              const Divider(),
              Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(screenWidth(context)/50)),
                elevation: 3,
                shadowColor: shadowColor,
                child: ListTile(
                  leading: const FaIcon(FontAwesomeIcons.instagram),
                  title:const  Text('Visit my Instagram!', style: TextStyle(color: textColor),),
                  subtitle: Text(widget.artist.instagram, style: const TextStyle(color: textColor),),
                  trailing: const Icon(Icons.more_vert_rounded),
                  onTap: () {
                    // launch url launcher
                  },
                ),
              ),
            ],
          )
        ),
      ),
    );
  }
}
