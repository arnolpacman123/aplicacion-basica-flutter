import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Aplicación Básica',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: TextButton(
                onPressed: () {
                  _mostrarAlert(context);
                },
                child: Text(
                  'Presiona aquí',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: Colors.blueAccent,
                  onSurface: Colors.grey,
                  padding: EdgeInsets.all(25),
                  shadowColor: Colors.brown,
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _mostrarAlert(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            title: Center(child: Text('¡Bienvenido!')),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text('Esta es tu primera aplicación en Flutter'),
                FlutterLogo(
                  size: 100.0,
                )
              ],
            ),
            actions: <Widget>[
              TextButton(
                child: Text('Ok'),
                onPressed: () => Navigator.of(context).pop(),
              ),
              TextButton(
                child: Text('Cancelar'),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ],
          );
        });
  }
}
