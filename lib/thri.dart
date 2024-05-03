import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'two.dart';

class thri extends StatelessWidget {
  const thri({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MySVScreen(),
    );
  }
}

class MySVScreen extends StatelessWidget {
  const MySVScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 30),

              Container(
                width: 130,
                height: 130,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('images/angry-bird.gif'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),

              const Text("Some kind of game!",
                  style: TextStyle(
                      fontSize: 34,
                      fontFamily: 'RubikBubbles',
                      color: Color(0xffDCC6B7))),

              const SizedBox(height: 80),

              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Введите Имя',
                    hintStyle: TextStyle(
                      fontFamily: 'Steppe2',
                      fontSize: 14,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Color(0xFF66BB6A), width: 1.2),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Color(0xffC5DDDD), width: 1.0),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20), //это дает пространство между полями

              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Введите Пароль',
                    hintStyle: TextStyle(
                      fontFamily: 'Steppe2',
                      fontSize: 14,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Color(0xFF66BB6A), width: 1.2),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Color(0xffC5DDDD), width: 1.0),
                    ),
                  ),
                ),
              ),

              const SizedBox(
                height: 15,
              ),

              const SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const two()));
                    },
                    child: const Text(
                      'Пропустить',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 17,
                        fontFamily: 'Steppe3',
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.transparent,
                      onPrimary: const Color(0xf594a9c8),
                      shadowColor: Colors.transparent.withOpacity(0.0),
                      // Цвет тени

                      shape: RoundedRectangleBorder(
                        borderRadius:
                        BorderRadius.circular(70), // Округление углов
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 30),
                    ),
                  ),
                  const SizedBox(width: 72),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      'Продолжить',
                      style: TextStyle(
                          fontSize: 17,
                          fontFamily: 'Steppe3',
                          color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xf594a9c8),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(70),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 30),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 160),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        children: const [
                          SizedBox(
                            height: 3,
                          ),
                          Text("Плыть или лететь — вот в чём альбатрос",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: "Steppe1",
                                  fontWeight: FontWeight.normal)),
                          Text("Плыть или лететь — вот в чём альбатрос",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: "Steppe2",
                                  fontWeight: FontWeight.normal)),
                          Text(
                            "Плыть или лететь — вот в чём альбатрос",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 15,
                                fontFamily: "Steppe2",
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
