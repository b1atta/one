import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

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

              const SizedBox(height: 50),

                Padding(padding: EdgeInsets.all(25.0),
                child: Text(
                    '''Цель игры: Найти все пары одинаковых карточек.
   Правило: Запомните местоположение каждой карточки, которую вы перевернули. Когда вы переворачиваете следующую карточку, сравнивайте ее с предыдущей. Если они одинаковые,получаете очки. Если они разные, продолжайте искать другие пары. Победа: Игра заканчивается, когда все пары найдены.''',
                    textAlign: TextAlign.center,

                    style: TextStyle(
                        fontSize: 17,
                        fontFamily: 'Steppe-Light',
                        color: Color(0xf594a9c8))),
                ),

              const SizedBox(height: 150),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      'Начать',
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
            ],
          ),
        ),
      ),
    );
  }
}
