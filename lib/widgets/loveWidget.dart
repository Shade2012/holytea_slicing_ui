import 'package:flutter/material.dart';

class FavoriteIcon extends StatefulWidget {




  @override
  _FavoriteIconState createState() => _FavoriteIconState();
}

class _FavoriteIconState extends State<FavoriteIcon> {
  bool isFavorite = false;

  void toggleFavorite() {
    setState(() {
      isFavorite = !isFavorite;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(177, 217, 217, 217),
        borderRadius: BorderRadius.circular(50),
      ),
      child: SizedBox(
        width: 30,
        height: 30,
        child: IconButton(
          onPressed: toggleFavorite,
          icon: Icon(
            isFavorite ? Icons.favorite : Icons.favorite_border,
            color: isFavorite ? Colors.red : Colors.black26,
          ),
        ),
      ),
       // Set margin using getMargin()
    );
  }
}
