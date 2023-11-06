
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:newapp/api/getapi.dart';
import 'package:newapp/model/newsapi.dart';

class NewsClass extends StatefulWidget{
  @override
  State<StatefulWidget>createState(){
    return NewsClassState();
  }
}

class NewsClassState extends State<NewsClass>{
  late Future<Newsapi?>? _futurehorizontalist;
  late Future<Newsapi?>? _futureverticallist;
  horizontalCards(size,Articles article){
    return Container(
      margin: EdgeInsets.only(left: 10),
      child: Stack(
        children: [
          Container(
            height: size.height/4,
            width: size.width/1.5,
            margin: EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20)
            ),
            child: ClipRRect(
              borderRadius:BorderRadius.circular(20) ,
              child: Image.network(article.urlToImage!,fit: BoxFit.cover,),
            )
            ,
          ),
          Positioned(
            left: 15,
            bottom: 70,
            child: Container(
              width: size.width/1.7,
              child:
              Text(article.title!,maxLines: 2,style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),
            ),
          ),
          Positioned(
            bottom: 10,
            left: 15,
            child: Text(dateFormat(article.publishedAt!),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14,color: Colors.white),),
          ),
          Positioned(
            right: 10,
            bottom: 10,
            child: Icon(Icons.play_circle,size: 40,color: Colors.grey,),
          )
        ],
      ),
    );

  }
  verticallist(size,Articles article){
    return Container(
      margin: EdgeInsets.only(left: 10,top: 15,right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 150,
                    width: 150,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(article.urlToImage!,fit: BoxFit.cover,),
                    ),
                  ),
                  Positioned(
                    left: 75,
                    top: 40,
                    child: Icon(Icons.play_circle,color: Colors.white,size:50,),
                  )
                ],
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: size.width/2,
                child: Text(article.title!,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),maxLines: 2,),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 20,right: 20,top: 15,bottom: 15),
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(11)
                    ),
                    child: Text(article.author!,style: TextStyle(color: Colors.white,fontSize: 10),),

                  ),
                  Padding(padding:const EdgeInsets.only(right: 15.0),
                    child: Text(dateFormat(article.publishedAt!),style: TextStyle(color: Colors.black54,fontSize: 12),),
                  ),

                ],
              )
            ],
          )
        ],
      ),
    );
  }
  apicall(){
    _futurehorizontalist=GetApi.getNewData();
  }
  apicallv(){
    _futureverticallist=GetApi.getNewData();
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    apicall();
    apicallv();

  }

  String dateFormat(String date){
    DateFormat dateFormat= new DateFormat("yyyy-mm-dd");
    DateTime format= (dateFormat.parse(date));
    DateFormat longdate= DateFormat("MMM dd,yyyy");
    date= longdate.format(format);
    return date;
  }
  @override
  Widget build(BuildContext context){
    var size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            FutureBuilder<Newsapi?>(
              future: _futurehorizontalist,
              builder:(BuildContext context,AsyncSnapshot<Newsapi?> snapshot){
                switch(snapshot.connectionState){
                  case ConnectionState.none:
                    return Container();
                  case ConnectionState.waiting:
                    return Container(height: 20,width: 20,child: const Center(child: CircularProgressIndicator(),),);
                  case ConnectionState.done:
                    if(snapshot.data==null || snapshot.data!.articles!.isEmpty){
                      return Container(child: Text("no data"),);

                    }
                    else{
                      var newsdata= snapshot.data;
                      return Container(
                        height: size.height/4,
                        width: size.width,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            padding: const EdgeInsets.all(8),
                            itemCount: newsdata!.articles!.length,
                            itemBuilder: (BuildContext context, int index) {
                              return horizontalCards(size,newsdata!.articles![index]);
                            }
                        ),
                      );
                    }
                  default:
                    return Container();
                }


              } ,
            ),

    //   Container(
    //   height: size.height/4,
    //     width: size.width,
    //     child: ListView.builder(
    //       scrollDirection: Axis.horizontal,
    //     padding: const EdgeInsets.all(8),
    //       itemCount: 5,
    //       itemBuilder: (BuildContext context, int index) {
    //         return horizontalCards(size);
    //       }
    // ),
    //   ),

            FutureBuilder<Newsapi?>(
              future: _futureverticallist,
              builder:(BuildContext context,AsyncSnapshot<Newsapi?> snapshot){
                switch(snapshot.connectionState){
                  case ConnectionState.none:
                    return Container();
                  case ConnectionState.waiting:
                    return Container(height: 20,width: 20,child: const Center(child: CircularProgressIndicator(),),);
                  case ConnectionState.done:
                    if(snapshot.data==null || snapshot.data!.articles!.isEmpty){
                      return Container(child: Text("no data"),);

                    }
                    else{
                      var newsvdata= snapshot.data;
                      return Container(

                        width: size.width,
                        child: ListView.builder(
                            primary: true,
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            padding: const EdgeInsets.all(8),
                            itemCount: newsvdata!.articles!.length,
                            itemBuilder: (BuildContext context, int index) {
                              return verticallist(size,newsvdata!.articles![index]);
                            }
                        ),
                      );
                    }
                  default:
                    return Container();
                }


              } ,
            ),

        // Container(
        //   height: size.height/2,
        //   width: size.width,
        //   child: ListView.builder(
        //       padding: const EdgeInsets.all(8),
        //       itemCount: 5,
        //       itemBuilder: (BuildContext context, int index) {
        //         return verticallist(size);
        //       }
        //   ),
        // )



          ],
        ),
      ),
    );
  }
}