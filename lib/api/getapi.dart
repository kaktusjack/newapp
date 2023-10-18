import 'package:newapp/static.dart';

import '../model/newsapi.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
class GetApi{

  static  Future<Newsapi?>?getNewData() async {
    String apiKey= "a25a0c0b883c4f389ff5c23da0f9dfea";
    // var headerdata={
    //   'Content type':'application/json',
    //   'Accept':'application/json'
    //   //'Cache-control':'no-cache,private,no-store,must-revalidate'
    // };
    try{
      //https://newsapi.org/v2/everything?q=tesla&from=2023-09-16&sortBy=publishedAt&apiKey=a25a0c0b883c4f389ff5c23da0f9dfea
      var url =
      Uri.https(StaticValue.baseurl, '/v2/everything', {"domains": "wsj.com","apiKey":apiKey });

      // Await the http get response, then decode the json-formatted response.
      var response = await http.get(url);
        var jsonResponse = convert.jsonDecode(response.body) ;
        var data= Newsapi.fromJson(jsonResponse);
        return data;


        //print('Number of books about http: $itemCount.');


    }
    catch(e) {
      return null;
    }
  }
}