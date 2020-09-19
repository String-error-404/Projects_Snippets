import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

TextEditingController getUserNameController = TextEditingController();

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
//

  Future<Widget> getTheNameOfUser() {
    return showDialog(
      context: context,
      child: Dialog(
        backgroundColor: Colors.transparent,
        child: Container(
          width: double.infinity,
          height: 300,
          decoration: BoxDecoration(
            color: Color(0xFFE7EFFF),
            borderRadius: BorderRadius.all(Radius.circular(60.0)),
          ),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(20.0),
                child: TextField(
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 25.0,
                  ),
                  decoration: InputDecoration(
                    hintStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        letterSpacing: 2.5,
                        fontWeight: FontWeight.bold),
                    hintText: 'Enter Your UserName',
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    ),
                  ),
                  onChanged: (value) {},
                  controller: getUserNameController,
                ),
              ),
              Container(
                  margin: EdgeInsets.all(20.0),
                  child: IconButton(
                    tooltip: 'Save',
                    icon: Icon(
                      Icons.save,
                    ),
                    onPressed: () {
                      print('hello');
                    },
                    iconSize: 60,
                  ))
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              'hello',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          getTheNameOfUser();
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
