import 'package:flutter/material.dart';
import 'package:pokedex/constants.dart';
import 'package:pokedex/services/asset_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Pokedex',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: primaryColor,
        ),
        home: Scaffold(
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(AssetManager.pokeball),
                          const SizedBox(
                            width: 20,
                          ),
                          const Text(
                            appName,
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 24,
                                color: white),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: TextField(
                              // style: TextStyle(color: Colors.green),

                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30)),
                                  hintText: 'Search',
                                  fillColor: white,
                                  filled: true),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Ink(
                            // color: Colors.green,
                            decoration: const ShapeDecoration(
                              color: white,
                              shape: CircleBorder(),
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.tag),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Expanded(

                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      // height: 100,

                      width: double.infinity,
                      color: white,
                      child: Text("Testing"),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
