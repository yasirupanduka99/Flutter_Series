import 'package:flutter/material.dart';

class NetworkRequest extends StatefulWidget {
  const NetworkRequest({super.key});

  @override
  State<NetworkRequest> createState() => _NetworkRequestState();
}

class _NetworkRequestState extends State<NetworkRequest> {
  //Simulate Network Request
  Future<String> getData() async {
    //simulate network request to get user email. this is just simulation of network request just for practise asynchronous.
    //If I use await then-program stop and wait to complete that function and then go head. this is synchronous. so if you use await to asynchronous method, you have to mention async to getData()
    String email = await Future.delayed(const Duration(seconds: 3), () {
      return 'sampleemail@gmail.com';
    });

    return email;
  }

  Future<void> getNetworkRequest() async {
    print(await getData());
  }

  @override
  void initState() {
    super.initState();
    getNetworkRequest();
    print('Other Codes');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Future DATA',
              style: TextStyle(
                fontSize: 22,
              ),
            )
          ],
        ),
      ),
    );
  }
}
