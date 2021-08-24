import 'package:flutter/material.dart';

class ShowItem extends StatefulWidget {
  const ShowItem({Key? key}) : super(key: key);

  @override
  _ShowItemState createState() => _ShowItemState();
}

class _ShowItemState extends State<ShowItem> {

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
                    onTap: () {},
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  GestureDetector(
                    child: Text("Gallery"),
                    onTap: () {},
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
      appBar: AppBar(),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 300,
              width: double.infinity,
              color: Colors.red,
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Container(
              height: 40,
              width: 150,
              child: ElevatedButton(
                  onPressed: () {
                    _showDialogBox(context);
                  }, child: Text("Select other item"))),
        ],
      ),
    );


  }
}
