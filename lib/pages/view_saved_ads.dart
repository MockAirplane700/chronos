import 'package:chronos/constants/constants.dart';
import 'package:chronos/logic/ad_stories.dart';
import 'package:chronos/objects/ad_story.dart';
import 'package:chronos/pages/view_ad.dart';
import 'package:chronos/widgets/custom_bottom_nav_bar.dart';
import 'package:chronos/widgets/custom_search_delegate_ad_story.dart';
import 'package:flutter/material.dart';

class ViewSavedAds extends StatefulWidget {
  const ViewSavedAds({Key? key}) : super(key: key);

  @override
  State<ViewSavedAds> createState() => _ViewSavedAdsState();
}

class _ViewSavedAdsState extends State<ViewSavedAds> {
  final List<AdStory> adStories = AdStories.getAds();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Saved stories' , style: TextStyle(color: textColor),),
        backgroundColor: appBarColor,
        actions: [
          IconButton(
              onPressed: () {
                showSearch(context: context, delegate: CustomSearchDelegateAdStory());
              },
              icon: const Icon(Icons.search)
          ),
        ],
        iconTheme: const IconThemeData(color: iconThemeDataColor),
      ),
      backgroundColor: backgroundColor,
      body: Padding(padding: EdgeInsets.all(MediaQuery.of(context).size.height/80), child: Center(
        child: ListView.builder(
            itemBuilder: (context , index) {
              if (adStories.isEmpty) {
                return const Center(child: Text('There are currently no saved ads'),);
              }else{
                return Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(MediaQuery.of(context).size.height/80)),
                  elevation: 5,
                  shadowColor: shadowColor,
                  child: ListTile(
                    leading: Padding(padding: EdgeInsets.all(MediaQuery.of(context).size.height/80), child: Image.network(adStories[index].networkImage),),
                    title: Text(adStories[index].name),
                    subtitle: Text('By ${adStories[index].artist.name} with inspiration from ${adStories[index].client.name}'),
                    trailing: const Icon(Icons.more_vert),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> ViewAdStory(adStory: adStories[index])));
                    },
                  ),
                );
              }//end if-else
            },
          itemCount: adStories.length,
        ),
      ),),
    );
  }
}
