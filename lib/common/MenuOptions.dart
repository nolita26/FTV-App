import 'package:flutter/material.dart';


class MenuOption extends StatelessWidget {
  final String label;
  final IconData icon;
  final Function onTap;

  const MenuOption({Key key, this.icon, this.label, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: <Widget>[
            Icon(
              icon,
              color: Colors.white38,
              size: 20,
            ),
            SizedBox(width: 20),
            Text(
              label,
              style: TextStyle(
                  fontSize: 50,
                  color: Colors.black54,
                  fontFamily: "Varela",
              ),
            ),
          ],
        ),
      ),
    );
  }
}