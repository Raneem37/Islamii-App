import 'package:flutter/material.dart';
import 'package:islamii_app/core/utils/AssetsManager.dart';

class tsbehTab extends StatefulWidget {
  @override
  State<tsbehTab> createState() => _tsbehTabState();
}

class _tsbehTabState extends State<tsbehTab> {
  int counter = 0 ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

          Container(
            width: 50,
            height: 50,
            margin: EdgeInsets.only(left: 240, top: 250),
            decoration: BoxDecoration(
              color: Color(0xFFB7935F),
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  offset: Offset(2, 2),
                  blurRadius: 5,
                ),
              ],
            ),
            alignment: Alignment.center, // Centers the text within the container
            child: Text(
              '$counter',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.only(
              top : 500 , left : 180
            ),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:MaterialStateProperty.all(Color(0xFFB7935F)),
                ),
                  onPressed: (){
                  setState(() {
                    counter++ ;
                  });
                  }, child:Text('Sobhan Allah' , style: TextStyle(
                backgroundColor: Color(0xFFB7935F), fontWeight: FontWeight.bold , fontSize: 18, color: Colors.black,
              ),))),
          Image.asset(AssetsManager.bodyOfsebha),
          Container(
              margin: EdgeInsets.only(left:200),
              child: Image.asset(AssetsManager.headOfSebha)),
        ],
      )

    );
  }
}
