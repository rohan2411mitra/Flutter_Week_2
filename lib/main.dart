import 'package:event_scheduler_app/new_event.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyApp();
}

class _MyApp extends State<MyApp> {
  final List<Widget> _list = [
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.deepPurple.shade200,
        appBar: AppBar(
          backgroundColor: Colors.deepPurpleAccent.shade400,
          title: Text("Event Scheduler"),
        ),
        body: ListView.builder(
            itemCount: _list.length,
            itemBuilder: ((context, index) => _list[index])),
        floatingActionButton: Builder(
          builder: (context) {
            return FloatingActionButton(
              backgroundColor: Colors.deepPurpleAccent.shade400,
              onPressed: () async {
                String newText= await Navigator.of(context).push(MaterialPageRoute(builder: (context)=>NewEventScreen()));
                setState(() {
                  _list.add(Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 10),
                    child: Center(
                      child: ListTile(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                        tileColor: Colors.white,
                        textColor: Colors.black,
                        title: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 2),
                          child: Text(newText, textAlign : TextAlign.center,),
                        )
                      )
                    ),
                  )
                  );
                  //_list.add(Text(newText));
                });
              },
              child: Icon(Icons.add),
            );
          }
        ),
      ),
    );
  }
}
