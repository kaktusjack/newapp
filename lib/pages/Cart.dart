import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class cart extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return cartstate();
  }

}

class cartstate extends State<cart> {

  cartlist(){
    return Container(
        width:400,
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.orangeAccent,
            borderRadius: BorderRadius.circular(30)
        ),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:[
              Container(height: 100, width:100,
                  child: Image.network("https://tse2.mm.bing.net/th?id=OIP.64RsVauXJm3H87jZDiBtAQHaE8&pid=Api&P=0&h=180",height: 150,width: 100,fit: BoxFit.cover,))
              //description
              ,Column(children: [
                Text("OPC CEMENT"),
                Text("Rs.500/- per bag"),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          //minus button
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.orangeAccent,
                              borderRadius: BorderRadius.circular(50),

                            ),
                            padding: EdgeInsets.all(10),
                            child: Center(child: Text("-",style: TextStyle(fontSize: 20,color: Colors.white),)),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("41",style: TextStyle(fontSize: 14,color: Colors.white),),
                          ),
                          //plus
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.orangeAccent,
                              borderRadius: BorderRadius.circular(50),

                            ),
                            padding: EdgeInsets.all(10),
                            child: Center(child: Text("+",style: TextStyle(fontSize: 20,color: Colors.white),)),
                          ),
                        ],
                      ),
                      Container(
                          padding: EdgeInsets.only(left:20.0,right:20,top:10,bottom:10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.orange
                          ),
                          child: Text("Bags",style: TextStyle(color: Colors.white),)
                      )
                    ],
                  ),
                )
              ]
              )
            ])
    );
  }
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      body:        Column(
        children: [AppBar(
          leading: Row(
            children: [
              Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT1St0yoy2FaXkvT4RtsQa8znBBI2VyPxDQmw&usqp=CAU",
                fit: BoxFit.cover,
                height: 40,
                width: 50,),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("BILDR",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black),),
              )
            ],
          ),
          actions: [
            GestureDetector(onTap: (){
              Navigator.pop(context);
            },child: const Icon(Icons.backspace),)
          ]
        ),
          SizedBox(height: 40,),
          Text("My Cart",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold)),


          Container(
            height: size.height/2.2,
            width: size.width,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  cartlist(),
                  cartlist(),
                  cartlist(),
                  cartlist(),

                ],
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              //total sum, qty
              Container(
                padding: EdgeInsets.all(15),
                child:
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Cost Break Down"),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text("Location: ",style: TextStyle(color: Colors.black54,fontSize: 12,fontWeight: FontWeight.bold),),
                            Text("Qty: ",style: TextStyle(color: Colors.black54,fontSize: 12,fontWeight: FontWeight.bold)),
                            Text("SubTotal: ",style: TextStyle(color: Colors.black54,fontSize: 12,fontWeight: FontWeight.bold)),
                            Text("Total: ",style: TextStyle(color: Colors.black54,fontSize: 12,fontWeight: FontWeight.bold)),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(" add your location here"),
                              Text(" 2"),
                              Text(" Rs.100/-"),
                              Text(" Rs.500/-"),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              // purchase button

              Container(
                  height: 70,
                  margin: const EdgeInsets.only(top: 10),
                  width: size.width,
                  decoration: const BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),

                  ),   child: const Center(
                child: Text(
                  "Purchase"
                  ,style: TextStyle(color: Colors.white,
                    fontWeight: FontWeight.bold,fontSize: 14),),
              )
              )
            ],
          )




        ],
      ),


    );
  }
}
