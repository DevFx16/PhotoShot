import 'package:flutter/material.dart';

class Galeria extends StatefulWidget {
  @override
  _Galeria createState() => new _Galeria();
}

class _Galeria extends State<Galeria> {
  List<Widget> _Fotos() {
    List<String> _Imagenes = [
      'http://images6.fanpop.com/image/photos/41500000/Avengers-Infinity-War-avengers-infinity-war-1-and-2-41506952-1600-900.jpg',
      'https://a-static.besthdwallpaper.com/avengers-endgame-aliens-and-heroes-wallpaper-1920x1080-15970_48.jpg',
      'https://visualcocaine.org/public/uploads/large/11544348606yzbcf60mkhlkufhun8sliwrnbljorwmtmenk770h3pt8oxjyypcdbyhcvnvxbxo3djm26auri5sp6mgcsookxmbipza0icv5qjmz.jpg',
      'https://premiergazette.com/wp-content/uploads/2018/12/Avengers-Endgame.jpg',
      'https://www.ubackground.com/_ph/86/772460118.jpg',
      'https://s3.dexerto.com/thumbnails/_thumbnailLarge/avengers-4-trailer-released-soon.jpg',
      'https://images3.alphacoders.com/949/thumb-350-949023.jpg',
      'https://www.comicsbeat.com/wp-content/uploads/2018/12/Arrowverse-Crossovers.jpg',
      'https://i.ytimg.com/vi/OL_KiEWFP78/hqdefault.jpg',
      'https://wallpapersite.com/images/wallpapers/justice-league-3200x1920-superheroes-the-flash-aquaman-superman-11297.jpg'
    ];
    return new List<GestureDetector>.generate(
      _Imagenes.length,
      (i) => new GestureDetector(
            child: Image.network(_Imagenes[i], fit: BoxFit.cover),
            onTap: () {
              print(_Imagenes[i]);
            },
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new GridView.extent(
      children: _Fotos(),
      maxCrossAxisExtent: 500,
      crossAxisSpacing: 3,
      mainAxisSpacing: 3,
      padding: new EdgeInsets.all(3),
    );
  }
}

main(List<String> args) {
  new Galeria();
}
