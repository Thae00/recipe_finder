import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

// TODO: Replace with new class
Widget recipeStringCard(String image, String label) {
  return Card(
    elevation: 4.0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(6.0),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(6.0), topRight: Radius.circular(6.0)),
            child: CachedNetworkImage(
                // TODO: Replace with image from recipe
                imageUrl: image,
                height: 210,
                fit: BoxFit.fill)),
        SizedBox(
          height: 12.0,
        ),
        Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Text(
            // TODO: Replace with label from recipe
            label,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
        ),
        SizedBox(
          height: 8.0,
        ),
        Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Text(
            '320CAL',
            style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 11,
            ),
          ),
        ),
        SizedBox(
          height: 8.0,
        ),
      ],
    ),
  );
}
