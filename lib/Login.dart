import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:newapp/Details.dart';

class login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return loginstate();
  }

}

  class loginstate extends State<login> {


  TextEditingController passwordcontroller= TextEditingController();
  TextEditingController emailcontroller= TextEditingController();
    @override
    Widget build(BuildContext context) {
      // TODO: implement build

        var size = MediaQuery
            .of(context)
            .size;
        return Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Stack(
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(30),
                                topLeft: Radius.circular(30)
                            ),
                            child: Image.network(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT1St0yoy2FaXkvT4RtsQa8znBBI2VyPxDQmw&usqp=CAU",
                              fit: BoxFit.cover,
                              height: 40,
                              width: 50,),
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
                                child: Icon(
                                  Icons.heart_broken, color: Colors.white,)),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("BLDR",style: TextStyle(fontSize:40,fontWeight: FontWeight.bold),),
                      )
                    ]

                ),
              ),
              Container(
               height: 300,
                  width: 400,
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(15.0)
                  ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: (

                      Text("Sign In",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),)





                      ),
                    ),
                    Container(

                      height: 45,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15.0)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Center(
                          child: (

                          TextField(controller: emailcontroller,)
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      height: 45,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15.0)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Center(
                          child: (
                          TextField(controller: passwordcontroller,
                          obscureText: true,)
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    GestureDetector(
                      onTap: (){
                        if(emailcontroller.text.contains("@")&& passwordcontroller.text.isNotEmpty){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context)=> details()),
                          );
                        }
                        else{

                        }

                      },
                      child: Container(
                        height: 45,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(15.0)
                        ),
                        child: Center(
                          child: (
                          Text('Login',style: TextStyle(fontSize: 20),)
                          ),
                        ),

                      ),
                    )

                  ],
                ),





              )
            ],
          ),
        );

    }
  }
  
  