import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FloatingButton extends StatelessWidget {
  const FloatingButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          heroTag: 'upload',
          onPressed: () {},
          backgroundColor: Colors.grey,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
          child: Icon(
            Icons.upload,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 16),
        FloatingActionButton(
          heroTag: 'whatsApp',
          onPressed: () {},
          backgroundColor: Colors.green,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
          child: Icon(
            FontAwesomeIcons.whatsapp,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
