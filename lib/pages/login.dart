import 'package:flutter/material.dart';
import 'index.dart';


class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> [
              Image.network("https://www.auroraalimentos.com.br/img/logo.png"), //Link => URL
              TextFormField(
                keyboardType: TextInputType.text,
                style: new TextStyle(color: Colors.white, fontSize: 18),
                decoration: InputDecoration(
                  labelText: "E-mail",
                  labelStyle: new TextStyle(color: Colors.white),
                )
              ),
              Divider(),
              TextFormField(
                keyboardType: TextInputType.text,
                obscureText: true,
                style: new TextStyle(color: Colors.white, fontSize: 18),
                decoration: InputDecoration(
                  labelText: "Senha",
                  labelStyle: new TextStyle(color: Colors.white),
                )
              ),
              Divider(),
              ButtonTheme(
                height: 60.0,
                child: RaisedButton(
                  onPressed: () => {
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => IndexPage()))
                  },
                  child: Text(
                    "Logar",
                    style: new TextStyle(color: Colors.deepOrange),
                  ),
                  color: Colors.white,
                )
              )
            ],
          )
        ),
      )

    );
  }
}