import 'package:flutter/material.dart';

class NetworkRequest extends StatefulWidget {
  const NetworkRequest({super.key});

  @override
  State<NetworkRequest> createState() => _NetworkRequestState();
}

class _NetworkRequestState extends State<NetworkRequest> {
  //Simulate Network Request
  void getData() async {
    //simulate network request to get user email. this is just simulation of network request just for practise asynchronous.
    //If I use await then-program stop and wait to complete that function and then go head. this synchronous. so if you use await to asynchronous method, you have to mention async to getData()
    await Future.delayed(const Duration(seconds: 3), () {
      print('sampleemail@gmail.com');
    });

    String age = await Future.delayed(const Duration(seconds: 5), () {
      return '20';
    });

    String gender = await Future.delayed(const Duration(seconds: 5), () {
      return 'male';
    });

    print(age + ' - ' + gender);

    Future.delayed(const Duration(seconds: 2), () {
      print('name: kawaki, phone: 0123456789');
    });

    print('Other Codes');
    //first print other codes. and after 3 seconds email print. that because this Future method is asynchronous. so program not stop at email print. program do other task also.
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Asynchronous Programming'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Get DATA',
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
