import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {

  double _valorSlider = 100.0;
  bool _bloquerCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50),
        child: Column(
          children: <Widget>[
            _crearSlider(),
            _crearCheckBox(),
            _crearSwitch(),
            Expanded(
              child: _crearImagen()
            )
          ],
        ),
      ),
    );
  }

  Widget _crearSlider() {


    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Tamaño de la imagen',
      divisions: 20,
      value: _valorSlider,
      min: 10.0,
      max: 400.0,
      onChanged: ( _bloquerCheck ) ? null :  ( valor ){

        setState(() {

          _valorSlider = valor;
        });

      },
    );

  }

  Widget _crearImagen() {


    return Image(
      image: NetworkImage('https://i.pinimg.com/originals/9b/3c/18/9b3c1840f9847671cf789c0dfb250f1f.jpg'),
      width: _valorSlider,
      fit: BoxFit.contain,
    );    

  }

  Widget _crearCheckBox() {

    // return Checkbox(
    //  value: _bloquerCheck,
    //  onChanged: (valor) {
    //    setState(() {
    //     _bloquerCheck = valor;         
    //    });
    //  },     
    // );

    return CheckboxListTile(
      title: Text('Bloquear slider'),
      value: _bloquerCheck,
     onChanged: (valor) {
       setState(() {
        _bloquerCheck = valor;         
       });
     },  
    );

  }

  Widget _crearSwitch() {

    return SwitchListTile(
      title: Text('Bloquear slider'),
      value: _bloquerCheck,
     onChanged: (valor) {
       setState(() {
        _bloquerCheck = valor;         
       });
     },  
    );

  }
}