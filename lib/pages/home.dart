import 'package:chronos/constants/constants.dart';
import 'package:chronos/logic/ad_stories.dart';
import 'package:chronos/pages/view_ad.dart';
import 'package:chronos/pages/view_client.dart';
import 'package:chronos/widgets/custom_bottom_nav_bar.dart';
import 'package:chronos/widgets/custom_drawer.dart';
import 'package:chronos/widgets/custom_search_delegate_ad_story.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../objects/ad_story.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<AdStory> ads = AdStories.getAds();
  List<Widget> gridTiles = [];

  @override
  Widget build(BuildContext context) {
    int count =2;
    if (count > 8) {
      count = 2;
    }
    for (var value in ads) {
      gridTiles.add(InkWell(
        focusColor: Colors.red,
        child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(MediaQuery.of(context).size.height/80)),
          elevation: 3,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage(value.networkImage) , fit: BoxFit.contain),
            ),
              height: MediaQuery.of(context).size.height / count++,
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Text(value.name),
                    ],
                  )
                ],
              )
          ),
        ),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=> ViewAdStory(adStory: value)));
        },
      ));
      count++;
    }//end for loop
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home', style: TextStyle(color: textColor),),
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
      drawer: const CustomDrawer(),
      bottomNavigationBar: const CustomBottomNavigationBar(selectedIndex: 0),
      body: Padding(
        padding: EdgeInsets.all(MediaQuery.of(context).size.height/80),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/6,
                child: GestureDetector(
                  child: CircleAvatar(
                    radius: MediaQuery.of(context).size.height/80,
                    backgroundImage: NetworkImage(chronosClient.networkImage),
                  ),
                  onTap: () {
                    // go to the chronos client page
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> ViewClientPage(client: chronosClient)));
                  },
                ),
              ),
              const Divider(),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/1.5,
                child: SingleChildScrollView(
                  controller: scrollController,
                  child: Center(
                    child: StaggeredGrid.count(
                        crossAxisCount: 2,
                      mainAxisSpacing: 1,
                      children: gridTiles,
                    )
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
