import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'calculate.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CHEAPSTER',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final _pricea = TextEditingController();
  final _sizea = TextEditingController();
  final _priceb = TextEditingController();
  final _sizeb = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/pexels.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'CHEAPSTER.',
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  color: Colors.grey[800],
                  fontWeight: FontWeight.w900,
                  fontStyle: FontStyle.italic,
                  fontFamily: 'Open Sans',
                  fontSize: 45),
            ),
            Text(
              'CALCULATOR',
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  color: Colors.grey[800],
                  fontWeight: FontWeight.w900,
                  fontStyle: FontStyle.italic,
                  fontFamily: 'Open Sans',
                  fontSize: 42),
            ),
            Text('  ',
                style: TextStyle(
                    fontSize: 36.0,
                    color: Colors.pink.shade600,
                    fontWeight: FontWeight.bold)),

            Image.asset('assets/images/grocery.png', width: 300.0),

            //SizedBox(width: 8.0),
            Text('  ',
                style: TextStyle(
                    fontSize: 36.0,
                    color: Colors.pink.shade600,
                    fontWeight: FontWeight.bold)),

            Row(
              children: <Widget>[
                const Text('A',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 60.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    )),
                Expanded(
                    child: TextField(
                  textAlign: TextAlign.center,
                  controller: _sizea,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(40.0),
                    filled: true,
                    fillColor: Colors.white.withOpacity(1),
                    border: OutlineInputBorder(),
                    hintText: 'Enter Size A',
                  ),
                )),
                Container(
                  color: Colors.white.withOpacity(0.0),
                  height: 100,
                  width: 10,

                ),
                Expanded(
                    child: TextField(
                  textAlign: TextAlign.center,
                  controller: _pricea,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(40.0),
                    filled: true,
                    fillColor: Colors.white.withOpacity(1),
                    border: OutlineInputBorder(),
                    hintText: 'Enter Price A',
                  ),
                )),
              ],
            ),
            Row(
              children: <Widget>[
                Text('B',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 60.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    )),
                Expanded(
                    child: TextField(
                  textAlign: TextAlign.center,
                  controller: _sizeb,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(40.0),
                    filled: true,
                    fillColor: Colors.white.withOpacity(1),
                    border: OutlineInputBorder(),
                    hintText: 'Enter Size B',
                  ),
                )),
                Container(
                  color: Colors.white.withOpacity(0.0),
                  height: 100,
                  width: 10,
                ),
                Expanded(
                    child: TextField(
                  textAlign: TextAlign.center,
                  controller: _priceb,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(40.0),
                    filled: true,
                    fillColor: Colors.white.withOpacity(1),
                    border: OutlineInputBorder(),
                    hintText: 'Enter Price B',
                  ),
                )),
              ],
            ),
            Text('  ',
                style: TextStyle(
                    fontSize: 36.0,
                    color: Colors.pink.shade600,
                    fontWeight: FontWeight.bold)),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: ElevatedButton(
                child: Text('CALCULATE'),
                onPressed: () {
                  //  var l = _length.text;
                  // var g = _girth.text;
                  var pricea = _pricea.text;
                  var priceb = _priceb.text;
                  var sizea = _sizea.text;
                  var sizeb = _sizeb.text;
                  var text = cal(pricea, sizea, priceb, sizeb);
                  showDialog(
                    context: context,
                    barrierDismissible: false,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('Result'),
                        content: Text(text),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text('OK'),
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
