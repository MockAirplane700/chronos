import 'package:chronos/constants/constants.dart';
import 'package:chronos/objects/ad_story.dart';
import 'package:chronos/objects/client.dart';
import 'package:chronos/pages/view_ad.dart';
import 'package:chronos/widgets/custom_bottom_nav_bar.dart';
import 'package:chronos/widgets/custom_search_delegate_ad_story.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ViewClientPage extends StatefulWidget {
  final Client client;

  const ViewClientPage({Key? key, required this.client}) : super(key: key);

  @override
  State<ViewClientPage> createState() => _ViewClientPageState();
}

class _ViewClientPageState extends State<ViewClientPage> {
  @override
  Widget build(BuildContext context) {
    List<AdStory> stories = widget.client.relevantAdStories();
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.client.name, style: const TextStyle(color: textColor),),
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
      bottomNavigationBar: const CustomBottomNavigationBar(selectedIndex: 1),
      body:  SingleChildScrollView(
        child: Center(
            child: Column(
              children: [
                // Image of the client banner
                Padding(padding: EdgeInsets.all(screenWidth(context)/50 ) , child: SizedBox(
                  width: screenWidth(context),
                  height: screenHeight(context)/4,
                  child: Image.network(widget.client.networkImage,),
                ),),
                // About the client
                const Divider(),
                Text('About the organization: ${widget.client.about}', style: const TextStyle(color: textColor),),
                // link to their website  [ List tile]
                const Divider(),
                Card(
                  elevation: 3,
                  shadowColor: shadowColor,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(screenWidth(context)/50)),
                  child: ListTile(
                    leading: const  FaIcon(FontAwesomeIcons.internetExplorer),
                    title: const Text('Visit our website!', style: TextStyle(color: textColor),),
                    subtitle: Text(widget.client.website ,style: const TextStyle(color: textColor),),
                    trailing: const Icon(Icons.more_vert_outlined),
                    onTap: () {
                      // visit website url launcher
                      launchUrlWithIntent(widget.client.website);
                    },
                  ),
                ),
                // link to their socials [ List tile ]
                const Divider(),
                Card(
                  elevation: 3,
                  shadowColor: shadowColor,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(screenWidth(context)/50)),
                  child: ListTile(
                    leading: const  FaIcon(FontAwesomeIcons.networkWired),
                    title: const Text('Visit our primary social network!', style: TextStyle(color: textColor),),
                    subtitle: Text(widget.client.primarySocialNetwork ,style: const TextStyle(color: textColor),),
                    trailing: const Icon(Icons.more_vert_outlined),
                    onTap: () {
                      // visit website url launcher
                    },
                  ),
                ),
                // todo: show the stories related to the company through maybe a dialog with a list tiles or staggered grid
                const Divider(),
                Row(
                  children: [
                    Expanded(child: ElevatedButton(
                        onPressed: () {
                          showDialog(context: context, builder: (context) => AlertDialog(
                            scrollable: true,
                            backgroundColor: Colors.transparent,
                            title: Text('${widget.client.name} inspired works' , style: const TextStyle(color: textColor),),
                            content: Container(
                              height: double.maxFinite,
                              width: double.maxFinite,
                              child: ListView.builder(
                                  itemBuilder: (context , index) {
                                    if (stories.isEmpty) {
                                      return const Center(child: Text('There are currenlty no art works'),);
                                    } else {
                                      return Card(
                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(MediaQuery.of(context).size.height/80)),
                                        shadowColor: shadowColor,
                                        elevation: 5,
                                        child: ListTile(
                                          leading: Padding(padding: EdgeInsets.all(MediaQuery.of(context).size.height/80) , child: Image.network(stories[index].networkImage)),
                                          title: Text('Name: ${stories[index].name}'),
                                          subtitle: Text('The artist behind this work: ${stories[index].artist.name}'),
                                          trailing: const Icon(Icons.more_vert),
                                          onTap: () {
                                            Navigator.push(context, MaterialPageRoute(builder: (context) => ViewAdStory(adStory: stories[index])));
                                          },
                                        ),
                                      );
                                    }//end if-else
                                  },
                                itemCount: stories.length,
                              ),
                            ),
                          ));
                        }, 
                        child:  Text('Show stories inspired from ${widget.client.name}')
                    ))
                  ],
                )
              ],
            )
        ),
      ),
    );
  }
}
