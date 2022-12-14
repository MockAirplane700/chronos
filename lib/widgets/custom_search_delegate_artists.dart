import 'package:chronos/logic/artists.dart';
import 'package:chronos/objects/artist.dart';
import 'package:chronos/pages/view_artist.dart';
import 'package:flutter/material.dart';

class CustomSearchDelegateArtist extends SearchDelegate{
  int indexValue = 0;
  final List<Artist> artists = Artists.getArtists();

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
    leading: Image.network(artists[indexValue].networkImage),
    title: Text(artists[indexValue].name),
    subtitle: Text(artists[indexValue].city),
    onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context)=> ViewArtistPage(artist: artists[indexValue])));
    },
  );

  @override
  Widget buildSuggestions(BuildContext context) {
    List<Artist> suggestions = artists.where((item) {
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
            subtitle: Text(suggestions[index].city),
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
}//end