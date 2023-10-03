# flutter_tutorial_18_future_builder

This flutter tutorial 18 is about Flutter FutureBuilder

# About Flutter Map
import 'dart:convert';

void main() {

var myMap = {'key': 1200};
print(myMap['key']);

var myMap1 = '{"results": [{"id":1234,"name":"sahan"},{"id":1235, "name":"pasindu"}]}';
//   print(myMap1['results']);
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

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
