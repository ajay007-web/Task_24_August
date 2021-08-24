


import 'dart:io' ;

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  File? imageSelected;



  openGallery(BuildContext context) async {

  var picture = await ImagePicker().pickImage(source: ImageSource.gallery);
    this.setState(() {

      imageSelected = picture;

    });
    Navigator.of(context).pop();


  }

  openCamera(BuildContext context) async{
    var picture = await ImagePicker().pickImage(source: ImageSource.camera);
    this.setState(() {
      imageSelected = picture ;

    });
    Navigator.of(context).pop();
  }


  Future<void> _showDialogBox(BuildContext context) async {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text(
                    "Make any Choice",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    child: Text("Camera"),
                    onTap: () {
                      openCamera(context);
                    },
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  GestureDetector(
                    child: Text("Gallery"),
                    onTap: () {
                      openGallery(context);
                    },
                  )
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Photo App")),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "USE CAMERA OR GALLERY",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
                height: 40,
                width: 150,
                child: ElevatedButton(
                    onPressed: () {
                      _showDialogBox(context);
                    },
                    child: Text("Image"))),
            SizedBox(
              height: 40,
            ),
            Container(
                width: 150,
                height: 40,
                child: ElevatedButton(
                    onPressed: () {
                      _showDialogBox(context);
                    },
                    child: Text("Video"))),
          ],
        ),
      ),
    );


  }

}
