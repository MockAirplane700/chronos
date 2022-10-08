import 'package:chronos/logic/ad_stories.dart';
import 'package:chronos/objects/ad_story.dart';
import 'package:chronos/pages/view_ad.dart';
import 'package:flutter/material.dart';

class CustomSearchDelegateAdStory extends SearchDelegate{
  int indexValue = 0;
  final List<AdStory> ads = AdStories.getAds();

  @override
  List<Widget>? buildActions(BuildContext context) => [
    IconButton(
        onPressed: () {
          query = '';
        },
        icon: const Icon(Icons.clear)
    )
  ];//end build actions

  @override
  Widget? buildLeading(BuildContext context) => IconButton(
      onPressed: () => close(context, null),
      icon: const Icon(Icons.arrow_back)
  );

  @override
  Widget buildResults(BuildContext context) => ListTile(
    leading: Image.network(ads[indexValue].networkImage),
    title: Text(ads[indexValue].name),
    subtitle: Text(ads[indexValue].client.name),
    onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context)=> ViewAdStory(adStory: ads[indexValue])));
    },
  );

  @override
  Widget buildSuggestions(BuildContext context) {
    List<AdStory> suggestions = ads.where((item) {
      final itemNameComparison = item.name.toLowerCase();
      final input = query.toLowerCase();
      return itemNameComparison.contains(input);
    }).toList();

    return ListView.builder(
        itemBuilder: (context , index) {
          if (suggestions.isEmpty) {
            return const Center(child: CircularProgressIndicator(),);
          }else{
            return ListTile(
              leading: Image.network(suggestions[index].networkImage),
              title: Text(suggestions[index].name),
              subtitle: Text(suggestions[index].client.name),
              onTap: () {
                query = suggestions[index].name;
                showResults(context);
              },
            );
          }//end if-else
        },
      itemCount: suggestions.length,
    );
  }
}//end custom search delegate ad story