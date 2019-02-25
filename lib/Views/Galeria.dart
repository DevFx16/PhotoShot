import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';


class Galeria extends StatefulWidget {
  @override
  _Galeria createState() => new _Galeria();
}

class _Galeria extends State<Galeria> {
  final List<String> _Imagenes = [
    'http://images6.fanpop.com/image/photos/41500000/Avengers-Infinity-War-avengers-infinity-war-1-and-2-41506952-1600-900.jpg',
    'https://a-static.besthdwallpaper.com/avengers-endgame-aliens-and-heroes-wallpaper-1920x1080-15970_48.jpg',
    'https://visualcocaine.org/public/uploads/large/11544348606yzbcf60mkhlkufhun8sliwrnbljorwmtmenk770h3pt8oxjyypcdbyhcvnvxbxo3djm26auri5sp6mgcsookxmbipza0icv5qjmz.jpg',
    'https://premiergazette.com/wp-content/uploads/2018/12/Avengers-Endgame.jpg',
    'https://www.ubackground.com/_ph/86/772460118.jpg',
    'https://s3.dexerto.com/thumbnails/_thumbnailLarge/avengers-4-trailer-released-soon.jpg',
    'https://images3.alphacoders.com/949/thumb-350-949023.jpg',
    'https://www.comicsbeat.com/wp-content/uploads/2018/12/Arrowverse-Crossovers.jpg',
    'https://i.ytimg.com/vi/OL_KiEWFP78/hqdefault.jpg',
    'https://wallpapersite.com/images/wallpapers/justice-league-3200x1920-superheroes-the-flash-aquaman-superman-11297.jpg',
    'https://revengeofthefans.com/wp-content/uploads/2018/07/Arrowverse.jpg',
    'https://i.redd.it/vd7g46qf3sty.png',
    'https://wallpapersite.com/images/wallpapers/grant-gustin-3300x2063-the-flash-hd-2990.jpg',
    'https://dam.smashmexico.com.mx/wp-content/uploads/2018/10/22155903/Top-5-green-arrow-diferencias-comic-serie-tv-cover.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return new GridView.builder(
        physics: const AlwaysScrollableScrollPhysics(),
        padding: new EdgeInsets.all(3),
        itemCount: _Imagenes.length,
        itemBuilder: (BuildContext context, int index) {
          return new GestureDetector(
            child: new CachedNetworkImage(
              imageUrl: _Imagenes[index],
              placeholder: (context, url) => new CircularProgressIndicator(),
              errorWidget: (context, url, error) => new Icon(Icons.error),
              fit: BoxFit.cover,
            ),
          );
        },
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, crossAxisSpacing: 4, mainAxisSpacing: 4));
  }
}

main(List<String> args) {
  new Galeria();
}
