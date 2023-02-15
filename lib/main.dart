import 'package:flutter/material.dart';
import 'package:pokedex/constants.dart';
import 'package:pokedex/models/pokemon.dart';
import 'package:pokedex/services/asset_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    List<Pokemon> pokemon = [
      Pokemon("Pikachu", 001, AssetManager.picachu),
      Pokemon("Pikachu", 002, AssetManager.picachu),
      Pokemon("Pikachu", 003, AssetManager.picachu),
      Pokemon("Pikachu", 004, AssetManager.picachu),
      Pokemon("Pikachu", 005, AssetManager.picachu),
      Pokemon("Pikachu", 006, AssetManager.picachu),
      Pokemon("Pikachu", 007, AssetManager.picachu),
      Pokemon("Pikachu", 008, AssetManager.picachu),
      Pokemon("Pikachu", 009, AssetManager.picachu),
      Pokemon("Pikachu", 010, AssetManager.picachu),
      Pokemon("Pikachu", 011, AssetManager.picachu),
      Pokemon("Pikachu", 012, AssetManager.picachu),
      Pokemon("Pikachu", 013, AssetManager.picachu),
      Pokemon("Pikachu", 014, AssetManager.picachu),
      Pokemon("Pikachu", 015, AssetManager.picachu),
      Pokemon("Pikachu", 016, AssetManager.picachu),
    ];

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
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      // height: 100,
                      padding: EdgeInsets.all(15),
                      width: double.infinity,
                      color: white,
                      child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                        ),
                        itemCount: pokemon.length,
                        itemBuilder: ((context, index) {
                          return Card(
                            elevation: 10,
                            color: Colors.white,
                            child: Column(children: [
                              Align(
                                alignment: Alignment.topRight,
                                child: Text(
                                  pokemon[index].number.toString(),
                                ),
                              ),
                              Image.asset(AssetManager.picachu),
                              Expanded(
                                child: Container(
                                  width: double.infinity,
                                  color: Colors.green,
                                  child: Text(pokemon[index].name),
                                ),
                              )
                            ]),
                          );
                        }),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
