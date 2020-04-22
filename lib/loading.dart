import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[800],
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: SpinKitWave(
                color: Colors.white,
                size: 50.0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:100.0),
              child: FlatButton(
                onPressed: () =>
                    Navigator.pushReplacementNamed(context, '/piano'),
                child: Text(
                  'Piano',
                  style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontSize: 20.0,
                  ),
                ),
                color: Colors.white,
              ),
            ),
            FlatButton(
              onPressed: () =>
                  Navigator.pushReplacementNamed(context, '/dice'),
              child: Text(
                'Dicess',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 20.0,
                ),
              ),
              color: Colors.white,
            ),
            FlatButton(
              onPressed: () =>
                  Navigator.pushReplacementNamed(context, '/quiz'),
              child: Text(
                'Quizer',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 20.0,
                ),
              ),
              color: Colors.white,
            ),
            FlatButton(
              onPressed: () =>
                  Navigator.pushReplacementNamed(context, '/destini'),
              child: Text(
                'Decision',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 16.0,
                ),
              ),
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
