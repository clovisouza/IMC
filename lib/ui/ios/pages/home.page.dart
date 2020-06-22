import 'package:flutter/cupertino.dart';
import 'package:imc/bloc/imc.bloc.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
    var bloc= new ImcBloc();
    
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text("Cálculo do IMC"),
        ),      
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(20),
              child: CupertinoTextField(
                placeholder: "Altura (cm)",
                controller: bloc.heightCtrl,
                keyboardType: TextInputType.number,              
              ), 
            ),
             Padding(
              padding: EdgeInsets.all(20),
              child: CupertinoTextField(
                placeholder: "Peso (kg)",
                controller: bloc.weightCtrl,
                keyboardType: TextInputType.number,              
              ), 
            ),
             Padding(
              padding: EdgeInsets.all(20),
              child: CupertinoButton.filled(
                child:Text(
                   bloc.result,
                ),
                onPressed: (){
                  setState(() {
                  bloc.calculate();  
                  });                  
                },                
              ), 
            ),
          ],

        ) ,
    );
  }
}
