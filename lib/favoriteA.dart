import 'package:flutter/material.dart';

class FavoriteA extends StatefulWidget {
  @override
  _FavoriteAState createState() => _FavoriteAState();
}

class _FavoriteAState extends State<FavoriteA> {

  bool isFavorited = true;
  int favoriteCount = 41;

  void _handleTap() {
    setState(() {
      isFavorited = !isFavorited;
      if (isFavorited) {
        favoriteCount += 1;
      } else {
        favoriteCount -= 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          child: IconButton(
            alignment: Alignment.centerRight,
            icon: (isFavorited ? Icon(Icons.star) : Icon(Icons.star_border)),
            color: Colors.red[500],
            onPressed: _handleTap,
          ),
        ),
        Text('$favoriteCount'),
      ],
    );
  }
}
