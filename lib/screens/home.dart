import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My First App',
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 40),
        child: Column(
          children: [
             const Text('You Have Pushed the button this many times'),
            Text(
              counter.toString(),
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
            ),
            TextButton(
                onPressed: () {
                  counter++;

                  setState(() {});
                  print('You Have clicked me $counter Times');
                },
                child: const Text('Press Me to increase')),
            TextButton(
                onPressed: () {
                  counter = 0;

                  setState(() {});
                  print('Reset');
                },
                child: const Text('Reset'))

            // Test Code

            // Container(
            //   height: 400,
            //   width: 300,
            //   clipBehavior: Clip.antiAliasWithSaveLayer,
            //   alignment: Alignment.bottomCenter,
            //   decoration: BoxDecoration(
            //       color: Colors.red, borderRadius: BorderRadius.circular(30)),
            //   child: Container(
            //     padding: const EdgeInsets.symmetric(horizontal: 20),
            //     width: 300,
            //     height: 100,
            //     decoration: BoxDecoration(color: Colors.grey.withOpacity(0.6)),
            //     child: Row(
            //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //       children: [
            //         Container(
            //           height: 40,
            //           width: 40,
            //           decoration: const BoxDecoration(
            //               color: Colors.white, shape: BoxShape.circle),
            //           child: const Icon(Icons.access_alarms),
            //         ),
            //         Column(
            //           crossAxisAlignment: CrossAxisAlignment.end,
            //           mainAxisSize: MainAxisSize.min,
            //           children: [
            //             Text('Eteye Johnson'),
            //             Text('Trans Amadi Layout'),
            //           ],
            //         )
            //       ],
            //     ),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
