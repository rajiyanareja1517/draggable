# Draggable 

A draggable project created in flutter. draggable supports both ios and android, clone the appropriate branches mentioned below:

* For Mobile: https://github.com/rajiyanareja1517/draggable

Download or clone this repo by using the link below:

```
git remote add origin https://github.com/rajiyanareja1517/draggable.git
```

Dragging & Animation		

- Drag & Drop Functionality
- Draggable, LongPressDraggable And DragTarget Widgets

```
flutter-app/
|- android
|- build
|- ios
|- lib
|- test
```

Here is the folder structure we have been using in this project

```
lib/
|- model/
|- utils/
|- view/
|- main.dart
```

### screens

This directory screens all the screen of the application together in one place. A separate file is created for each type as shown in example below:

```
screens/
|- home_page.dart

```

### utiles

Contains the common file(s) and utilities used in a project. The folder structure is as follows:

```

|- utiles/
    |- data/

```


### Main

This is the starting point of the application. All the application level configurations are defined in this file i.e, theme, routes, title, orientation etc.

```dart
import 'package:draggable/view/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
debugShowCheckedModeBanner: false,
      home:HomeScreen()
    );
  }
}


```



https://github.com/user-attachments/assets/da1af46f-001b-4f91-a98d-51d234f20eb8




## Conclusion

Again to note, this is example can appear as my code for what it is - but it is an example only. If you liked my work, don’t forget to ⭐ star the repo to show your support.

