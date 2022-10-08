// these are objects that hold information on the art works made

import 'package:chronos/objects/artist.dart';
import 'package:chronos/objects/client.dart';

class AdStory {
  final String name;
  final Client client;
  final String networkImage;
  final String youtubeLink;
  final String story;
  final Artist artist;

  AdStory({
    required this.name, required this.client, required this.networkImage,
    required this.youtubeLink, required this.story, required this.artist
});


}//end ad story