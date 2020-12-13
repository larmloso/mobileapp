import 'package:flutter/material.dart';


//--- Parent manages favoriteB ---
class ParentManageB extends StatefulWidget {
  @override
  _ParentManageBState createState() => _ParentManageBState();
}

class _ParentManageBState extends State<ParentManageB> {
  bool _isFavorited = true;
  int _favoriteCount = 41;

  void _handleTapboxChanged(bool newValue) {
    setState(() {
      _isFavorited = newValue;
      if (_isFavorited) {
        _favoriteCount += 1;
      } else {
        _favoriteCount -= 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FavoriteB(
        isFavorited: _isFavorited,
        onChanged: _handleTapboxChanged,
        favoriteCount: _favoriteCount,
      ),
    );
  }
}

//--- FavoriteB ----
class FavoriteB extends StatelessWidget {
  FavoriteB({Key key,this.isFavorited: true,@required this.onChanged,this.favoriteCount})
      : super(key: key);

  final bool isFavorited;
  final ValueChanged<bool> onChanged;
  final int favoriteCount;

  void _handleTap() {
    onChanged(!isFavorited);
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
