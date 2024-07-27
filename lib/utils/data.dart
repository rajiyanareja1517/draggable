import 'dart:ui';

import 'package:flutter/material.dart';

import '../model/zoo_model.dart';

class Data{
 static int score=0;
static  List<ZooModel>list=[
    ZooModel(animal: "🐬", data: "fish", onTrack:false
        , darkColor:Colors.blue,  lightColor: Colors.blue.shade200),
    ZooModel(animal: "🐯", data: "tiger", onTrack:false
        , darkColor:Colors.orange,  lightColor: Colors.amber),
  ZooModel(animal: "🐿️", data: "t1", onTrack:false
        , darkColor:Colors.brown,  lightColor: Colors.brown.shade200),
  ZooModel(animal: "🦖", data: "t2", onTrack:false
        , darkColor:Colors.green,  lightColor: Colors.green.shade200),
  ];
}