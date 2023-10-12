import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class details extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return detailsstate();
  }

}

class detailsstate extends State<details> {

 late final List<Widget> items;

    getitems()
  {
    items=[
      Container(child: Image.network(""),),
      Container(child: Image.network(""),),
      Container(child: Image.network(" "),)
  ];
}

int _current=0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getitems();
  }
  @override
  Widget build(BuildContext context) {


    var size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(

          children: [
            AppBar(),
            Container(
              height: size.height,
              width: size.width,
              child: Stack(
                children: [
                  //slider
                  CarouselSlider(
                      items: items,
                      options: CarouselOptions(
                        height: 400,
                        aspectRatio: 16/9,
                        viewportFraction: 0.8,
                        initialPage: 0,
                        enableInfiniteScroll: true,
                        reverse: false,
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 3),
                        autoPlayAnimationDuration: Duration(milliseconds: 800),
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enlargeCenterPage: true,
                        enlargeFactor: 0.3,
                        onPageChanged: (index,reason){
                          setState(() {
                            _current=index;
                          });
                        },
                        scrollDirection: Axis.horizontal,
                      )
                  ),

                  //Container
                  Positioned(
                    bottom: 0,
                    child: Container(
                      padding: EdgeInsets.only(left: 15,right: 15,top: 20),
                      height: size.height/2.0,
                      decoration: BoxDecoration(
                          color: Color(0xff404042),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(30),
                              topLeft: Radius.circular(30)
                          )
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: size.width/1.1,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  // text
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("OPC Premium",style:
                                      TextStyle(color: Colors.white,
                                        fontWeight: FontWeight.bold,fontSize: 16,),),
                                      SizedBox(height:15),
                                      Text("RS. 1080/- per Bag",style:
                                      TextStyle(color: Colors.white,
                                        fontWeight: FontWeight.normal,fontSize: 14,),),
                                      SizedBox(height:15),
                                      Text("Minimum Bags: 500.",style:
                                      TextStyle(color: Colors.white,
                                        fontWeight: FontWeight.normal,fontSize: 12,),)
                                    ],
                                  ),
                                  //buttons
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
                                ],
                              ),
                            ),

                            Container(
                              height: 100,
                              width: size.width/1.1,
                              child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec id ex libero. Praesent ultricies ipsum sit amet sapien porta, et vehicula sapien vulputate. Aliquam aliquet purus et justo bibendum, sit amet faucibus velit egestas. Duis fringilla arcu in lorem placerat, ac pharetra lacus finibus. Nulla ut nulla et ligula aliquam facilisis ac eget purus. Phasellus elementum dui vel libero eleifend bibendum. Proin sed nisl id enim ullamcorper lacinia.",
                                style: TextStyle(color: Colors.white,fontSize: 11,fontWeight: FontWeight.normal), maxLines: 4,),
                            ),
                            SizedBox(height: 30,),

                            //add to cart
                            Center(
                              child: Container(
                                  height: 70,

                                  width: size.width,
                                  decoration: BoxDecoration(
                                    color: Colors.orange,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(30),
                                      topRight: Radius.circular(30),
                                    ),

                                  ),   child: Center(
                                child: const Text(
                                  "Add to Cart"
                                  ,style: TextStyle(color: Colors.white,
                                    fontWeight: FontWeight.bold,fontSize: 14),),
                              )
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}