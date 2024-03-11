import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class ScoreManager {
  //ส่ง score ข้าม class
  int score;
  ScoreManager({required this.score});
  void updateScore(bool isCorrect) {
    //อัพเดท Score เมื่อตอบถูก
    if (isCorrect) {
      score += 1;
    }
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      routes: {
        '/next': (context) => Page2(scoreManager: ScoreManager(score: 0)),
        '/page3': (context) => Page3(scoreManager: ScoreManager(score: 0)),
        '/page4': (context) => Page4(scoreManager: ScoreManager(score: 0)),
        '/page5': (context) => Page5(scoreManager: ScoreManager(score: 0)),
        '/page6': (context) => Page6(scoreManager: ScoreManager(score: 0)),
        '/page7': (context) => Page7(scoreManager: ScoreManager(score: 0)),
        '/page8': (context) => Page8(scoreManager: ScoreManager(score: 0)),
        '/page9': (context) => Page9(scoreManager: ScoreManager(score: 0)),
        '/page10': (context) => Page10(scoreManager: ScoreManager(score: 0)),
        '/page11': (context) => Page11(scoreManager: ScoreManager(score: 0)),
        '/page12': (context) => Page12(scoreManager: ScoreManager(score: 0)),
        '/home': (context) => const HomePage()
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'เกมทายสโมสรนักฟุตบอล',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/555.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'images/789.png',
                width: 0.1,
                height: 0.1,
              ),
              SizedBox(
                height: 250,
              ),
              Image.asset(
                'images/321.png',
                width: 200,
                height: 250,
              ),
              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/next');
                },
                child: Text(
                  'PLAY',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  final ScoreManager scoreManager;

  const Page2({Key? key, required this.scoreManager}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> imageNames = ['city.png', 'manu.png', 'Tottenham_Hotspur.png'];
    imageNames.shuffle();
    bool isManuFirst = imageNames[0] == 'manu.png';
    List<bool> correctAnswers = [isManuFirst, !isManuFirst, !isManuFirst];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Antony',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 40,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          ColorFiltered(
            colorFilter: ColorFilter.mode(
              Color.fromARGB(255, 193, 179, 221).withOpacity(
                  0.6), // ลดค่า opacity เพื่อทำให้รูปภาพ '777' ดูอ่อนลง
              BlendMode.modulate,
            ),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/777.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset(
                    'images/antony.png',
                    width: 150,
                    height: 220,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 20),
                InkWell(
                  onTap: () {
                    bool isManu = imageNames[0] == 'manu.png';
                    bool isCorrect = isManu;
                    scoreManager.updateScore(isCorrect);
                    navigateToNextPage(isCorrect, context);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset(
                      'images/${imageNames[0]}',
                      width: 100,
                      height: 100,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                InkWell(
                  onTap: () {
                    bool isManu = imageNames[1] == 'manu.png';
                    bool isCorrect = isManu;
                    scoreManager.updateScore(isCorrect);
                    navigateToNextPage(isCorrect, context);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset(
                      'images/${imageNames[1]}',
                      width: 100,
                      height: 100,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                InkWell(
                  onTap: () {
                    bool isManu = imageNames[2] == 'manu.png';
                    bool isCorrect = isManu;
                    scoreManager.updateScore(isCorrect);
                    navigateToNextPage(isCorrect, context);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset(
                      'images/${imageNames[2]}',
                      width: 100,
                      height: 100,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void navigateToNextPage(bool isCorrect, BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Page3(scoreManager: scoreManager),
      ),
    );
  }
}

class Page3 extends StatelessWidget {
  final ScoreManager scoreManager;

  const Page3({Key? key, required this.scoreManager}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> imageNames = [
      'West_Ham_United_FC_logo.svg.png',
      'liverpool.png',
      'city.png'
    ];
    imageNames.shuffle();
    bool isCityFirst = imageNames[0] == 'city.png';
    List<bool> correctAnswers = [isCityFirst, !isCityFirst, !isCityFirst];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Kevin De Bruyne',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          ColorFiltered(
            colorFilter: ColorFilter.mode(
              Color.fromARGB(255, 193, 179, 221).withOpacity(
                  0.6), // ลดค่า opacity เพื่อทำให้รูปภาพ '777' ดูอ่อนลง
              BlendMode.modulate,
            ),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/777.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset(
                    'images/kdb.png',
                    width: 150,
                    height: 220,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 20),
                InkWell(
                  onTap: () {
                    bool isCorrect = correctAnswers[0];
                    scoreManager.updateScore(isCorrect);
                    navigateToNextPage(isCorrect, context);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset(
                      'images/${imageNames[0]}',
                      width: 100,
                      height: 100,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                InkWell(
                  onTap: () {
                    bool isCorrect = correctAnswers[1];
                    scoreManager.updateScore(isCorrect);
                    navigateToNextPage(isCorrect, context);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset(
                      'images/${imageNames[1]}',
                      width: 100,
                      height: 100,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                InkWell(
                  onTap: () {
                    bool isCorrect = correctAnswers[2];
                    scoreManager.updateScore(isCorrect);
                    navigateToNextPage(isCorrect, context);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset(
                      'images/${imageNames[2]}',
                      width: 100,
                      height: 100,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void navigateToNextPage(bool isCorrect, BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Page4(scoreManager: scoreManager),
      ),
    );
  }
}

class Page4 extends StatelessWidget {
  final ScoreManager scoreManager;

  const Page4({Key? key, required this.scoreManager}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> imageNames = [
      'madrid.png',
      'Getafe_cf_200px.png',
      'Atletico_Madrid_2017_logo.svg.png'
    ];
    imageNames.shuffle();
    bool isMadridFirst = imageNames[0] == 'madrid.png';
    List<bool> correctAnswers = [isMadridFirst, !isMadridFirst, !isMadridFirst];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Jude Bellingham',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          ColorFiltered(
            colorFilter: ColorFilter.mode(
              Color.fromARGB(255, 193, 179, 221).withOpacity(
                  0.6), // ลดค่า opacity เพื่อทำให้รูปภาพ '777' ดูอ่อนลง
              BlendMode.modulate,
            ),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/777.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset(
                    'images/jude.png',
                    width: 150,
                    height: 220,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 20),
                InkWell(
                  onTap: () {
                    bool isCorrect = correctAnswers[0];
                    scoreManager.updateScore(isCorrect);
                    navigateToNextPage(isCorrect, context);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset(
                      'images/${imageNames[0]}',
                      width: 100,
                      height: 100,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                InkWell(
                  onTap: () {
                    bool isCorrect = correctAnswers[1];
                    scoreManager.updateScore(isCorrect);
                    navigateToNextPage(isCorrect, context);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset(
                      'images/${imageNames[1]}',
                      width: 100,
                      height: 100,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                InkWell(
                  onTap: () {
                    bool isCorrect = correctAnswers[2];
                    scoreManager.updateScore(isCorrect);
                    navigateToNextPage(isCorrect, context);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset(
                      'images/${imageNames[2]}',
                      width: 100,
                      height: 100,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void navigateToNextPage(bool isCorrect, BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Page5(scoreManager: scoreManager),
      ),
    );
  }
}

class Page5 extends StatelessWidget {
  final ScoreManager scoreManager;

  const Page5({Key? key, required this.scoreManager}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> imageNames = [
      'Logo_of_AC_Milan.svg.png',
      'AS_Roma_logo_(2017).svg.png',
      'napoli.png'
    ];
    imageNames.shuffle();
    bool isSSC_NeapelFirst = imageNames[0] == 'napoli.png';
    List<bool> correctAnswers = [
      isSSC_NeapelFirst,
      !isSSC_NeapelFirst,
      !isSSC_NeapelFirst
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Victor Osimhen',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          ColorFiltered(
            colorFilter: ColorFilter.mode(
              Color.fromARGB(255, 193, 179, 221).withOpacity(0.6),
              BlendMode.modulate,
            ),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/777.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset(
                    'images/osimhen.png',
                    width: 150,
                    height: 220,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 20),
                InkWell(
                  onTap: () {
                    bool isCorrect = correctAnswers[0];
                    scoreManager.updateScore(isCorrect);
                    navigateToNextPage(isCorrect, context);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset(
                      'images/${imageNames[0]}',
                      width: 100,
                      height: 100,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                InkWell(
                  onTap: () {
                    bool isCorrect = correctAnswers[1];
                    scoreManager.updateScore(isCorrect);
                    navigateToNextPage(isCorrect, context);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset(
                      'images/${imageNames[1]}',
                      width: 100,
                      height: 100,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                InkWell(
                  onTap: () {
                    bool isCorrect = correctAnswers[2];
                    scoreManager.updateScore(isCorrect);
                    navigateToNextPage(isCorrect, context);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset(
                      'images/${imageNames[2]}',
                      width: 100,
                      height: 100,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void navigateToNextPage(bool isCorrect, BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Page6(scoreManager: scoreManager),
      ),
    );
  }
}

class Page6 extends StatelessWidget {
  final ScoreManager scoreManager;

  const Page6({Key? key, required this.scoreManager}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> imageNames = [
      'Columbus_Crew_logo_2021.svg (1).png',
      'mai.png',
      '123.png'
    ];
    imageNames.shuffle();
    bool isMaiCorrect = imageNames[0] == 'mai.png';
    List<bool> correctAnswers = [isMaiCorrect, !isMaiCorrect, !isMaiCorrect];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Luis Suárez',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          ColorFiltered(
            colorFilter: ColorFilter.mode(
              Color.fromARGB(255, 193, 179, 221).withOpacity(0.6),
              BlendMode.modulate,
            ),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/777.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset(
                    'images/Luis_Suárez_2018.png',
                    width: 150,
                    height: 220,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 20),
                InkWell(
                  onTap: () {
                    bool isCorrect = correctAnswers[0];
                    scoreManager.updateScore(isCorrect);
                    navigateToNextPage(isCorrect, context);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset(
                      'images/${imageNames[0]}',
                      width: 100,
                      height: 100,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                InkWell(
                  onTap: () {
                    bool isCorrect = correctAnswers[1];
                    scoreManager.updateScore(isCorrect);
                    navigateToNextPage(isCorrect, context);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset(
                      'images/${imageNames[1]}',
                      width: 100,
                      height: 100,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                InkWell(
                  onTap: () {
                    bool isCorrect = correctAnswers[2];
                    scoreManager.updateScore(isCorrect);
                    navigateToNextPage(isCorrect, context);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset(
                      'images/${imageNames[2]}',
                      width: 100,
                      height: 100,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void navigateToNextPage(bool isCorrect, BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Page7(scoreManager: scoreManager),
      ),
    );
  }
}

class Page7 extends StatelessWidget {
  final ScoreManager scoreManager;

  const Page7({Key? key, required this.scoreManager}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> imageNames = [
      'hilal.png',
      'Al-Ittihad_Club_(Jeddah)_logo.svg.png',
      'al-nas.png'
    ];
    imageNames.shuffle();
    bool isAl_HilalFirst = imageNames[0] == 'hilal.png';
    List<bool> correctAnswers = [
      isAl_HilalFirst,
      !isAl_HilalFirst,
      !isAl_HilalFirst
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Neymar',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          ColorFiltered(
            colorFilter: ColorFilter.mode(
              Color.fromARGB(255, 193, 179, 221).withOpacity(0.6),
              BlendMode.modulate,
            ),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/777.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset(
                    'images/neymar.png',
                    width: 150,
                    height: 220,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 20),
                InkWell(
                  onTap: () {
                    bool isCorrect = correctAnswers[0];
                    scoreManager.updateScore(isCorrect);
                    navigateToNextPage(isCorrect, context);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset(
                      'images/${imageNames[0]}',
                      width: 100,
                      height: 100,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                InkWell(
                  onTap: () {
                    bool isCorrect = correctAnswers[1];
                    scoreManager.updateScore(isCorrect);
                    navigateToNextPage(isCorrect, context);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset(
                      'images/${imageNames[1]}',
                      width: 100,
                      height: 100,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                InkWell(
                  onTap: () {
                    bool isCorrect = correctAnswers[2];
                    scoreManager.updateScore(isCorrect);
                    navigateToNextPage(isCorrect, context);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset(
                      'images/${imageNames[2]}',
                      width: 100,
                      height: 100,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void navigateToNextPage(bool isCorrect, BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Page8(scoreManager: scoreManager),
      ),
    );
  }
}

class Page8 extends StatelessWidget {
  final ScoreManager scoreManager;

  const Page8({Key? key, required this.scoreManager}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> imageNames = [
      'Arsenal_FC.svg.png',
      'Chelsea_FC.svg.png',
      'liverpool.png'
    ];
    imageNames.shuffle();
    bool isLiverpoolFirst = imageNames[2] == 'liverpool.png';
    List<bool> correctAnswers = [
      !isLiverpoolFirst,
      !isLiverpoolFirst,
      isLiverpoolFirst,
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Mohamed Salah',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          ColorFiltered(
            colorFilter: ColorFilter.mode(
              Color.fromARGB(255, 193, 179, 221).withOpacity(0.6),
              BlendMode.modulate,
            ),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/777.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset(
                    'images/salah.png',
                    width: 150,
                    height: 220,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 20),
                InkWell(
                  onTap: () {
                    bool isCorrect = correctAnswers[0];
                    scoreManager.updateScore(isCorrect);
                    navigateToNextPage(isCorrect, context);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset(
                      'images/${imageNames[0]}',
                      width: 100,
                      height: 100,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                InkWell(
                  onTap: () {
                    bool isCorrect = correctAnswers[1];
                    scoreManager.updateScore(isCorrect);
                    navigateToNextPage(isCorrect, context);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset(
                      'images/${imageNames[1]}',
                      width: 100,
                      height: 100,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                InkWell(
                  onTap: () {
                    bool isCorrect = correctAnswers[2];
                    scoreManager.updateScore(isCorrect);
                    navigateToNextPage(isCorrect, context);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset(
                      'images/${imageNames[2]}',
                      width: 100,
                      height: 100,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void navigateToNextPage(bool isCorrect, BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Page9(scoreManager: scoreManager),
      ),
    );
  }
}

class Page9 extends StatelessWidget {
  final ScoreManager scoreManager;

  const Page9({Key? key, required this.scoreManager}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> imageNames = [
      'Olympique_Marseille_logo.svg.png',
      'paris.png',
      'Lille_OSC_2018_logo.svg.png'
    ];
    imageNames.shuffle();
    bool isParisFirst = imageNames[0] == 'paris.png';
    List<bool> correctAnswers = [isParisFirst, !isParisFirst, !isParisFirst];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Kylian Mbappé',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          ColorFiltered(
            colorFilter: ColorFilter.mode(
              Color.fromARGB(255, 193, 179, 221).withOpacity(0.6),
              BlendMode.modulate,
            ),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/777.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset(
                    'images/Mbappe.png',
                    width: 150,
                    height: 220,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 20),
                InkWell(
                  onTap: () {
                    bool isCorrect = correctAnswers[0];
                    scoreManager.updateScore(isCorrect);
                    navigateToNextPage(isCorrect, context);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset(
                      'images/${imageNames[0]}',
                      width: 100,
                      height: 100,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                InkWell(
                  onTap: () {
                    bool isCorrect = correctAnswers[1];
                    scoreManager.updateScore(isCorrect);
                    navigateToNextPage(isCorrect, context);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset(
                      'images/${imageNames[1]}',
                      width: 100,
                      height: 100,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                InkWell(
                  onTap: () {
                    bool isCorrect = correctAnswers[2];
                    scoreManager.updateScore(isCorrect);
                    navigateToNextPage(isCorrect, context);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset(
                      'images/${imageNames[2]}',
                      width: 100,
                      height: 100,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void navigateToNextPage(bool isCorrect, BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Page10(scoreManager: scoreManager),
      ),
    );
  }
}

class Page10 extends StatelessWidget {
  final ScoreManager scoreManager;

  const Page10({Key? key, required this.scoreManager}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> imageNames = [
      'Rcd_mallorca.png',
      'barcelona.png',
      'Real_betis_logo.svg.png'
    ];
    imageNames.shuffle();
    bool isBarcelonaFirst = imageNames[0] == 'barcelona.png';
    List<bool> correctAnswers = [
      isBarcelonaFirst,
      !isBarcelonaFirst,
      !isBarcelonaFirst
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Joao Cancelo',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          ColorFiltered(
            colorFilter: ColorFilter.mode(
              Color.fromARGB(255, 193, 179, 221).withOpacity(0.6),
              BlendMode.modulate,
            ),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/777.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset(
                    'images/cancelo.png',
                    width: 150,
                    height: 220,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 20),
                InkWell(
                  onTap: () {
                    bool isCorrect = correctAnswers[0];
                    scoreManager.updateScore(isCorrect);
                    navigateToNextPage(isCorrect, context);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset(
                      'images/${imageNames[0]}',
                      width: 100,
                      height: 100,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                InkWell(
                  onTap: () {
                    bool isCorrect = correctAnswers[1];
                    scoreManager.updateScore(isCorrect);
                    navigateToNextPage(isCorrect, context);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset(
                      'images/${imageNames[1]}',
                      width: 100,
                      height: 100,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                InkWell(
                  onTap: () {
                    bool isCorrect = correctAnswers[2];
                    scoreManager.updateScore(isCorrect);
                    navigateToNextPage(isCorrect, context);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset(
                      'images/${imageNames[2]}',
                      width: 100,
                      height: 100,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void navigateToNextPage(bool isCorrect, BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Page11(scoreManager: scoreManager),
      ),
    );
  }
}

class Page11 extends StatelessWidget {
  final ScoreManager scoreManager;

  const Page11({Key? key, required this.scoreManager}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> imageNames = [
      '444.png',
      'Bayer_04_Leverkusen_logo.svg.png',
      'RB_Leipzig_2014_logo.svg.png',
    ];

    imageNames.shuffle();
    bool is444First = imageNames[0] == '444.png';
    List<bool> correctAnswers = [
      is444First,
      !is444First,
      !is444First,
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Thomas Müller',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          ColorFiltered(
            colorFilter: ColorFilter.mode(
              Color.fromARGB(255, 193, 179, 221).withOpacity(0.6),
              BlendMode.modulate,
            ),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/777.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset(
                    'images/muller.png', // Use the first image
                    width: 150,
                    height: 220,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 20),
                InkWell(
                  onTap: () {
                    bool isCorrect = correctAnswers[0];
                    scoreManager.updateScore(isCorrect);
                    navigateToNextPage(isCorrect, context);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset(
                      'images/${imageNames[0]}',
                      width: 100,
                      height: 100,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                InkWell(
                  onTap: () {
                    bool isCorrect = correctAnswers[1];
                    scoreManager.updateScore(isCorrect);
                    navigateToNextPage(isCorrect, context);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset(
                      'images/${imageNames[1]}',
                      width: 100,
                      height: 100,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                InkWell(
                  onTap: () {
                    bool isCorrect = correctAnswers[2];
                    scoreManager.updateScore(isCorrect);
                    navigateToNextPage(isCorrect, context);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset(
                      'images/${imageNames[2]}',
                      width: 100,
                      height: 100,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void navigateToNextPage(bool isCorrect, BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Page12(scoreManager: scoreManager),
      ),
    );
  }
}

class Page12 extends StatelessWidget {
  final ScoreManager scoreManager;

  const Page12({Key? key, required this.scoreManager}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int totalScore = scoreManager.score;

    return Scaffold(
      appBar: AppBar(
        title: Text('ผลคะแนน'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/555.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'ยินดีด้วยคุณได้คะแนน!',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.white),
              ),
              SizedBox(
                height: 150,
              ),
              Text(
                '$totalScore คะแนน',
                style: const TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 150,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/home');
                },
                child: const Text(
                  'เล่นอีกครั้ง',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
