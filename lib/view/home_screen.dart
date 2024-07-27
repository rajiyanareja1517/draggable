import 'package:flutter/material.dart';

import '../utils/data.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lab Work"),
        actions: [
          Container(
            child: Text(
              "${Data.score}",
              style: TextStyle(fontSize: 20),
            ),
          ),
          Container(
              margin: EdgeInsets.all(10),
              child: IconButton(
                icon: Icon(
                  Icons.refresh,
                  size: 24,
                ),
                onPressed: () {
                  for (int i = 0; i < Data.list.length; i++) {
                    Data.list[i].onTrack = false;
                  }
                  setState(() {});
                },
              ))
        ],
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Container(
          child: ListView.builder(
            itemCount: Data.list.length,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Draggable(
                        data: "${Data.list[index].data}",
                        childWhenDragging: Container(),
                        child: Text(
                          Data.list[index].onTrack
                              ? ""
                              : "${Data.list[index].animal}",
                          style: TextStyle(fontSize: 100),
                        ),
                        feedback: Text(
                          Data.list[index].animal,
                          style: TextStyle(
                              fontSize: 100, decoration: TextDecoration.none),
                        )),
                    DragTarget(
                      onWillAcceptWithDetails: (val) {
                        setState(() {
                          if (val.data == "${Data.list[index].data}") {
                            Data.score += 10;
                          } else {
                            Data.score -= 10;
                          }
                        });
                        return val.data == "${Data.list[index].data}";
                      },
                      onAcceptWithDetails: (val) {
                        setState(() {
                          Data.list[index].onTrack = true;
                        });
                      },
                      builder: (context, candidateData, rejectedData) {
                        return Container(
                          alignment: Alignment.center,
                          height: 150,
                          width: 150,
                          child: (Data.list[index].onTrack)
                              ? Text(
                                  "${Data.list[index].animal}",
                                  style: TextStyle(
                                      fontSize: 100,
                                      decoration: TextDecoration.none),
                                )
                              : Container(),
                          decoration: BoxDecoration(
                              color: Data.list[index].onTrack
                                  ? Data.list[index].darkColor
                                  : Data.list[index].lightColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                        );
                      },
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
