# Flutter_Tutorial_Practises

I do this Flutter tutorial. I'm following the Code Camp Sri Lanka YouTube channel flutter tutorial.
Flutter Tutorial Playlist Link: https://youtube.com/playlist?list=PLdRfLcb1Dvix15denuU7KoSdPiy_Xzp24&si=83WDvPmwINm5masG


#Tutorial 15 - Asynchronous Programming
This flutter tutorial 15 is about asynchronous programming
Synchronous programming means code executed line by line. It means it can do tasks one after another.
Asynchronous programming means it can be done multiple tasks at the same time. This is good when the system can do tasks without waiting for other tasks to be done.


#Tutorial 18 - FutureBuilder

About Mapping dart sample code

import 'dart:convert';

void main() {
  
  var myMap = {'key': 1200};
  print(myMap['key']);
  
  var myMap1 = '{"results": [{"id":1234,"name":"sahan"},{"id":1235, "name":"pasindu"}]}';
//print(myMap1['results']);
  Map users = jsonDecode(myMap1);
  print(users);
  
  List list = users['results'];
  print(list);
  
  print(list[1]['id']);
  
  list.add('{id: 1236, name: nirmal}');
  print(list);
  
  for(var item in list){
    print(item);
    print(item['name']);
  }
}
