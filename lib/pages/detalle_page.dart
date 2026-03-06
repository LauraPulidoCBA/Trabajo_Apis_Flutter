import 'package:flutter/material.dart';

class DetallePage extends StatelessWidget {

  final String nombre;
  final int id;

  DetallePage({required this.nombre, required this.id});

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Text(nombre),
      ),

      body: Center(

        child: SingleChildScrollView(

          child: Column(

            children: [

              Hero(
                tag: "pokemon$id",
                child: Image.network(
                  "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/$id.png",
                  width: 250,
                  height: 250,
                ),
              ),

              SizedBox(height: 20),

              Text(
                nombre,
                style: TextStyle(fontSize: 25),
              )

            ],

          ),

        ),

      ),

    );

  }

}