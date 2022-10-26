import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    bool isDesktop = MediaQuery.of(context).size.width >= 600;
    bool isMobile = MediaQuery.of(context).size.width < 600;
    // if this is inside stateful widgt class then
    /*
     bool isDesktop (BuildContex context)=>MediaQuery.of(context).size.width>=600;

    */

    // return Container();

    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Media query'),
        ),
        // centerTitle: true,
      ),
      // body: Center(
      //   child: Text(
      //     'Width is $screenWidth ,heght $screenHeight',
      //     style: const TextStyle(
      //         fontSize: 20, decoration: TextDecoration.underline),
      //   ),
      // ),

      body: Row(
        children: <Widget>[
          if (isDesktop)
            Container(
              color: Colors.green,
              // width: 200,
              width: screenWidth * 0.3, // 40% width

              child: const Center(
                child: Text(
                  'SIDEBAR  ',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          Expanded(
            child: Container(
              width: screenWidth * 0.7,
              color: Colors.blueAccent,
              child: const Center(
                child: Text(
                  'CONTENT',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
