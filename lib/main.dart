import 'package:flutter/material.dart';

void main() => runApp(AgendaApp());

class AgendaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(title: 'No tiene efecto', home: new PaginaPrincipal(title: 'GridView Galeria de Fotos Carrasco')); //fin de materiaApp
  } //fin del widget
} //fin de agendaApp

class PaginaPrincipal extends StatefulWidget {
  final String title;
  @override
  PaginaPrincipal({this.title}) : super();
  @override
  State<StatefulWidget> createState() {
    return new PaginaPrincipalState();
  }
} //fin de paginaPrincipal

class PaginaPrincipalState extends State<PaginaPrincipal> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new GridView.extent(
        maxCrossAxisExtent: 150.0,
        mainAxisSpacing: 5.0,
        crossAxisSpacing: 5.0,
        padding: const EdgeInsets.all(5.0),
        children: _buildGridTiles(29),
      ), //fin de gridView
    ); //fin de scaffold
  } //fin de widget
} //fin de PaginaPrincipalState

List<Widget> _buildGridTiles(numberOfTiles) {
  List<Container> containers = new List<Container>.generate(numberOfTiles, (int index) {
    //index = 0, 1, 2,...
    final imageName = index < 9 ? 'images/image0${index + 1}.JPG' : 'images/image${index + 1}.JPG';
    return new Container(
      child: new Image.asset(imageName, fit: BoxFit.fill),
    );
  }); //fin del contenedor generar nombre de foto
  return containers;
} //fin de list <widget>
