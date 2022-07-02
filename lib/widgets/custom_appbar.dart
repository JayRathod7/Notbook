import 'package:flutter/material.dart';

import '../helper_class/string.dart';

PreferredSizeWidget appBar() => AppBar(
  title: Text(
    AppString.appLabel,
    style: TextStyle(
        color: Colors.black, fontSize: 26, fontWeight: FontWeight.bold),
  ),
  centerTitle: false,
  flexibleSpace: Container(
    decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: <Color>[Colors.pink, Colors.yellow])),
  ),
  actions: [
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: InkWell(
        onTap: (){},
        child: Icon(
          Icons.save,
          color: Colors.black,
          size: 32,
        ),
      ),
    )
  ],
);
