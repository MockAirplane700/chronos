
// the client object holds information about the company who's logo is inspiration

import 'package:chronos/objects/ad_story.dart';
import 'package:chronos/objects/artist.dart';

class Client {
  final String name;
  final String networkImage;
  final String website;
  final String primarySocialNetwork;
  final String about;

  Client({required this.name, required this.networkImage,
    required this.website,
    required this.primarySocialNetwork, required this.about
  });

  List<AdStory> relevantAdStories() {
    return [
      AdStory(
          name: 'John Doe',
          client: Client(
              name: 'Jane Doe Foods',
              networkImage: 'https://smallbiztrends.com/ezoimgfmt/media.smallbiztrends.com/2021/10/wholesale-food-suppliers-850x476.png?ezimgfmt=ng%3Awebp%2Fngcb12%2Frs%3Adevice%2Frscb12-1',
              website: 'https://www.sizibamthandazo.dev', primarySocialNetwork: 'https://www.printful.com/', about: 'lorem ipsum'
          ),
          networkImage: 'https://i.pinimg.com/564x/d0/e3/87/d0e3877bcf25be88f51fb32e5541d0e1.jpg',
          youtubeLink: 'https://www.youtube.com/channel/UC9wKe8g-hvuhZkWNTxrLGqw',
          story: 'Lorem ipsum',
          artist: Artist(
              name: 'Jane Doe', portfolio: 'https://www.sizibamthandazo.dev',
              instagram: 'https://www.instagram.com/', twitter: 'https://twitter.com/',
              tiktok: 'https://www.tiktok.com/', patreon: 'https://www.patreon.com/',
              store: 'https://www.printful.com/', country: 'Country', city: 'Winnipeg',networkImage: 'https://i.ytimg.com/vi/B3uOHcbJDQQ/maxresdefault.jpg', about: 'lorem ipsum'
          )
      ),
      AdStory(
          name: 'John Doe',
          client: Client(
              name: 'Jane Doe Foods',
              networkImage: 'https://smallbiztrends.com/ezoimgfmt/media.smallbiztrends.com/2021/10/wholesale-food-suppliers-850x476.png?ezimgfmt=ng%3Awebp%2Fngcb12%2Frs%3Adevice%2Frscb12-1',
              website: 'https://www.sizibamthandazo.dev', primarySocialNetwork: 'https://www.printful.com/', about: 'lorem ipsum'
          ),
          networkImage: 'https://i.pinimg.com/564x/d0/e3/87/d0e3877bcf25be88f51fb32e5541d0e1.jpg',
          youtubeLink: 'https://www.youtube.com/channel/UC9wKe8g-hvuhZkWNTxrLGqw',
          story: 'Lorem ipsum',
          artist: Artist(
              name: 'Jane Doe', portfolio: 'https://www.sizibamthandazo.dev',
              instagram: 'https://www.instagram.com/', twitter: 'https://twitter.com/',
              tiktok: 'https://www.tiktok.com/', patreon: 'https://www.patreon.com/',
              store: 'https://www.printful.com/', country: 'Country', city: 'Winnipeg',networkImage: 'https://i.ytimg.com/vi/B3uOHcbJDQQ/maxresdefault.jpg', about: 'lorem ipsum'
          )
      ),
      AdStory(
          name: 'John Doe',
          client: Client(
              name: 'Jane Doe Foods',
              networkImage: 'https://smallbiztrends.com/ezoimgfmt/media.smallbiztrends.com/2021/10/wholesale-food-suppliers-850x476.png?ezimgfmt=ng%3Awebp%2Fngcb12%2Frs%3Adevice%2Frscb12-1',
              website: 'https://www.sizibamthandazo.dev', primarySocialNetwork: 'https://www.printful.com/', about: 'lorem ipsum'
          ),
          networkImage: 'https://i.pinimg.com/564x/d0/e3/87/d0e3877bcf25be88f51fb32e5541d0e1.jpg',
          youtubeLink: 'https://www.youtube.com/channel/UC9wKe8g-hvuhZkWNTxrLGqw',
          story: 'Lorem ipsum',
          artist: Artist(
              name: 'Jane Doe', portfolio: 'https://www.sizibamthandazo.dev',
              instagram: 'https://www.instagram.com/', twitter: 'https://twitter.com/',
              tiktok: 'https://www.tiktok.com/', patreon: 'https://www.patreon.com/',
              store: 'https://www.printful.com/', country: 'Country', city: 'Winnipeg',networkImage: 'https://i.ytimg.com/vi/B3uOHcbJDQQ/maxresdefault.jpg', about: 'lorem ipsum'
          )
      ),
      AdStory(
          name: 'John Doe',
          client: Client(
              name: 'Jane Doe Foods',
              networkImage: 'https://smallbiztrends.com/ezoimgfmt/media.smallbiztrends.com/2021/10/wholesale-food-suppliers-850x476.png?ezimgfmt=ng%3Awebp%2Fngcb12%2Frs%3Adevice%2Frscb12-1',
              website: 'https://www.sizibamthandazo.dev', primarySocialNetwork: 'https://www.printful.com/', about: 'lorem ipsum'
          ),
          networkImage: 'https://i.pinimg.com/564x/d0/e3/87/d0e3877bcf25be88f51fb32e5541d0e1.jpg',
          youtubeLink: 'https://www.youtube.com/channel/UC9wKe8g-hvuhZkWNTxrLGqw',
          story: 'Lorem ipsum',
          artist: Artist(
              name: 'Jane Doe', portfolio: 'https://www.sizibamthandazo.dev',
              instagram: 'https://www.instagram.com/', twitter: 'https://twitter.com/',
              tiktok: 'https://www.tiktok.com/', patreon: 'https://www.patreon.com/',
              store: 'https://www.printful.com/', country: 'Country', city: 'Winnipeg',networkImage: 'https://i.ytimg.com/vi/B3uOHcbJDQQ/maxresdefault.jpg', about: 'lorem ipsum'
          )
      ),
      AdStory(
          name: 'John Doe',
          client: Client(
              name: 'Jane Doe Foods',
              networkImage: 'https://smallbiztrends.com/ezoimgfmt/media.smallbiztrends.com/2021/10/wholesale-food-suppliers-850x476.png?ezimgfmt=ng%3Awebp%2Fngcb12%2Frs%3Adevice%2Frscb12-1',
              website: 'https://www.sizibamthandazo.dev', primarySocialNetwork: 'https://www.printful.com/', about: 'lorem ipsum'
          ),
          networkImage: 'https://i.pinimg.com/564x/d0/e3/87/d0e3877bcf25be88f51fb32e5541d0e1.jpg',
          youtubeLink: 'https://www.youtube.com/channel/UC9wKe8g-hvuhZkWNTxrLGqw',
          story: 'Lorem ipsum',
          artist: Artist(
              name: 'Jane Doe', portfolio: 'https://www.sizibamthandazo.dev',
              instagram: 'https://www.instagram.com/', twitter: 'https://twitter.com/',
              tiktok: 'https://www.tiktok.com/', patreon: 'https://www.patreon.com/',
              store: 'https://www.printful.com/', country: 'Country', city: 'Winnipeg',networkImage: 'https://i.ytimg.com/vi/B3uOHcbJDQQ/maxresdefault.jpg', about: 'lorem ipsum'
          )
      ),
    ];
  }//end method
}//end client