
import 'package:chronos/logic/clients.dart';
import 'package:chronos/objects/client.dart';
import 'package:chronos/pages/view_client.dart';
import 'package:flutter/material.dart';

class CustomSearchDelegateClients extends SearchDelegate{
  int indexValue = 0;
  final List<Client> clients = ClientsLogic.getClients();

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
    leading: Image.network(clients[indexValue].networkImage),
    title: Text(clients[indexValue].name),
    subtitle: Text(clients[indexValue].about, maxLines: 2, overflow: TextOverflow.ellipsis,),
    onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context)=> ViewClientPage(client: clients[indexValue])));
    },
  );

  @override
  Widget buildSuggestions(BuildContext context) {
    List<Client> suggestions = clients.where((item) {
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
            subtitle: Text(suggestions[index].about , maxLines: 2, overflow: TextOverflow.ellipsis,),
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