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
  @override
  Widget build(BuildContext context) {
    var size= MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body:Column(
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
          SizedBox(height: 15,)

        ],
      )

    );
  }


}