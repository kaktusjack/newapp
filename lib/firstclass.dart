import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class firstclass extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return firstclassstate();
  }


}

class firstclassstate extends State<firstclass>{
  textcard(String txt){
    return  Container(
      height: 30,
      width: 250,
      margin: EdgeInsets.only(right: 10,left: 10,bottom: 20),
      decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(7.0)
      ),
      child: Center(child: Text(txt))
      // Row(
      //     children:  [
      //       Padding(
      //         padding: EdgeInsets.only(left: 15.0,right: 15.0),
      //         child: Icon(Icons.smart_button,color:  Colors.white,size: 10,),
      //       ),
      //
      //       Text(txt)
      //     ]
      //
      //
      //
      // ),
    );

  }

  horizontalcards(){
    return Container(
      margin: EdgeInsets.only(left: 10,right: 10),

      // padding: const EdgeInsets.only(left: 30),
      decoration: BoxDecoration(color: Colors.orange
          ,borderRadius: BorderRadius.circular(30.0)),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30)
                ) ,
                child: Image.network("https://www.shutterstock.com/shutterstock/photos/1272824911/display_1500/stock-photo-salad-with-chicken-1272824911.jpg",
                  fit: BoxFit.cover,
                  height: 300,
                  width: 400,),
              ),
              Positioned(
                top: 20,
                left: 20,
                child: Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(50)
                    ),
                    child: Icon(Icons.heart_broken,color: Colors.white,)),
              )
            ],
          ),
          Text("Food delivery",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30),),
          Row(
            children: [
              Icon(Icons.star_border),
              Icon(Icons.star_border),
              Icon(Icons.star_border),
              Icon(Icons.star_border),
              Icon(Icons.star_border),

            ],

          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text("RS.500/-",style: TextStyle(color: Colors.black,fontSize: 20),),
          )
        ],
      ),


    );

  }
  @override
  Widget build(BuildContext context) {
    var size= MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body:SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Container(
              color: Colors.red,
              child: Column(

                children: [
                  Container(
                    child: Column(
                      children: [
                        const SizedBox(height: 60,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 50,
                              width: size.width/1.2,
                              decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(15.0)
                              ),
                              child: Row(
                                  children: const [
                                    Padding(
                                      padding: EdgeInsets.only(left: 15.0,right: 15.0),
                                      child: Icon(Icons.search,color:  Colors.white,size: 18,),
                                    ),

                                    Text('Search here')
                                  ]



                              ),
                            )

                          ],
                        ),
                        SizedBox(height: 10,),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          physics: AlwaysScrollableScrollPhysics(),
                          child: Container(
                         //   width: size.width,
                            child: Row(
                              children: [
                                textcard("food"),

                                textcard("beverage"),


                                textcard("resturants"),


                                textcard("gg"),


                                textcard("asd"),



                                textcard("qwe"),


                                textcard("resturants"),





                              ],
                            ),
                          ),
                        )

                      ],
                    ),

                  ),
                ]
              ),
            ),
            SizedBox(height: 50,),
            Padding(
              padding: const EdgeInsets.only(left: 15.0,right: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Food Home Delivery",
                        style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          Icon(Icons.star_border),
                          Icon(Icons.star_border),
                          Icon(Icons.star_border),
                          Icon(Icons.star_border),
                          Icon(Icons.star_border),

                        ],

                      )
                    ],
                  ),
                  Text("Rs.580/-", style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),)
                ],
              )

            ),
            SizedBox(height: 15,),
            Text("Details", style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 40),),
            Text("As the sun dipped below the horizon, casting a warm, orange glow across the tranquil lake, Sarah felt a sense of peace wash over her. The gentle rustling of leaves in the nearby trees and the distant chirping of crickets created a soothing symphony of nature's sounds. She took a deep breath, inhaling the fresh scent of pine trees, and closed her eyes for a moment, allowing herself to fully embrace the beauty of the moment. It was in these quiet moments that she found solace and a deep connection with the world around her, a reminder of the simple joys that life had to offer.", style: TextStyle(color: Colors.black,fontSize: 15),),
            Text("Location", style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
            Text("Patan,Lalitpur", style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),),
            SizedBox(height: 30,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  horizontalcards(),
                  horizontalcards(),
                  horizontalcards()
                ],
              ),
            )




          ],
        ),
      )

    );
  }


}