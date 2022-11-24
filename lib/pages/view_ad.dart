import 'package:chronos/constants/constants.dart';
import 'package:chronos/objects/ad_story.dart';
import 'package:chronos/objects/artist.dart';
import 'package:chronos/objects/client.dart';
import 'package:chronos/pages/view_artist.dart';
import 'package:chronos/pages/view_client.dart';
import 'package:chronos/widgets/custom_bottom_nav_bar.dart';
import 'package:chronos/widgets/custom_search_delegate_ad_story.dart';
import 'package:flutter/material.dart';

class ViewAdStory extends StatefulWidget {
  final AdStory adStory;
  const ViewAdStory({Key? key, required this.adStory}) : super(key: key);

  @override
  State<ViewAdStory> createState() => _ViewAdStoryState();
}

class _ViewAdStoryState extends State<ViewAdStory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.adStory.name, style: const TextStyle(color: textColor),),
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
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              // Gif display and or the video display 
              Padding(padding: EdgeInsets.all(screenWidth(context)/100), child: Image.network(widget.adStory.networkImage,),),
              // the name of the artist who made this and access to their profile [ ListTile ]
              const Divider(),
              Card(
                elevation: 5,
                shadowColor: shadowColor,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(screenWidth(context)/20)),
                child: ListTile(
                  leading: Padding(padding: EdgeInsets.all(screenWidth(context)/100), child: Image.network(widget.adStory.artist.networkImage)),
                  title: const Text('The artist behind this master piece!', style: TextStyle(color: textColor),),
                  subtitle: Text(widget.adStory.artist.name , style: const TextStyle(color: textColor),),
                  trailing: const Icon(Icons.format_paint),
                  onTap: () {
                    // go to relevant page
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> ViewArtistPage(artist: Artist(
                        name: widget.adStory.artist.name, portfolio:widget.adStory.artist.portfolio, instagram: widget.adStory.artist.instagram,
                        twitter: widget.adStory.artist.twitter,
                        tiktok:  widget.adStory.artist.tiktok, patreon:  widget.adStory.artist.patreon,
                        store:  widget.adStory.artist.store, country:  widget.adStory.artist.country, city:  widget.adStory.artist.city,
                        networkImage:  widget.adStory.artist.networkImage, about: widget.adStory.artist.about))));
                  },
                ),
              ),
              // the name of the client and access to their profile [List tile]
              const Divider(),
              Card(
                elevation: 5,
                shadowColor: shadowColor,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(screenWidth(context)/20)),
                child: ListTile(
                  leading: Padding(padding: EdgeInsets.all(screenWidth(context)/100), child:  Image.network(widget.adStory.client.networkImage),),
                  title: const Text('The organization we drew inspiration from!', style: TextStyle(color: textColor),),
                  subtitle: Text(widget.adStory.client.name , style: const TextStyle(color: textColor),),
                  trailing: const Icon(Icons.corporate_fare),
                  onTap: () {
                    // go to relevant page
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> ViewClientPage(client: Client(
                        name: widget.adStory.client.name, networkImage: widget.adStory.client.networkImage, website: widget.adStory.client.website, primarySocialNetwork:widget.adStory.client.primarySocialNetwork,
                      about:  widget.adStory.client.about,
                    ))));
                  },
                ),
              ),
              // The story synopsis to be told consider using a card ,
              const Divider(),
              Padding(padding: EdgeInsets.all(screenWidth(context)/50), child: Text(widget.adStory.story, style: const TextStyle(color: textColor),),),
              // Access to the instagram post
              const Divider(),
              Row(
                children: [
                  Expanded(child: ElevatedButton(
                      onPressed: () {
                        // go to instagram site
                        launchUrlWithIntent(widget.adStory.instagram);
                      },
                      child: const Text('Instagram')
                  ))
                ],
              ),
              // Access to the youtube video it was posted on
              const Divider(),
              Row(
                children: [
                  Expanded(child: ElevatedButton(
                      onPressed: () {
                        launchUrlWithIntent(widget.adStory.youtubeLink);
                      },
                      child: const Text('Youtube')
                  ))
                ],
              ),
              const Divider(),
              //todo: add save story and follow it functionality
              // Row(
              //   children: [
              //     Expanded(child: ElevatedButton(
              //         onPressed: () {
              //           // todo: save the ad and notify user of each update to add
              //           ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Story saved')));
              //         },
              //         child: Row(mainAxisAlignment: MainAxisAlignment.center, children:  [
              //           const Text('Follow this tale!'),
              //           SizedBox(width: screenWidth(context)/50,),
              //           const Icon(Icons.notification_add),
              //         ],)
              //     ))
              //   ],
              // ),
              
            ],
          ),
        ),
      ),
    );
  }
}
