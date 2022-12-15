import 'package:flutter/material.dart';

class NewEventScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _NewEventScreen();
}

class _NewEventScreen extends State<NewEventScreen> {
  final TextEditingController _TextEditController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade200,
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent.shade400,
        title: Text("New Event"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
            child: TextField(
              maxLines: null,
              decoration: InputDecoration(
                  isDense: true,
                  filled: true,
                  fillColor: Colors.deepPurpleAccent.shade400,
                  labelText: "Event",
                  labelStyle: TextStyle(color: Colors.white),
                  border: UnderlineInputBorder(
                    borderRadius:  BorderRadius.circular(25),
                  ),
                  prefixIcon: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Icon(Icons.calendar_month_sharp,
                        color: Colors.white),
                  )),
              controller: _TextEditController,
              style: TextStyle(color: Colors.white),
            ),
          ),
          // TextField(
          //   controller: _TextEditController,
          // ),
          Builder(builder: (context) {
            return SizedBox(
              width: double.infinity,

              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple.shade100,
                      shape: StadiumBorder(),
                    ),
                    onPressed: () {
                      String NewEventText = _TextEditController.text;
                      Navigator.of(context).pop(NewEventText);
                    },
                    child: Text("ADD")),
              ),
            );
          })
        ],
      ),
    );
  }
}
