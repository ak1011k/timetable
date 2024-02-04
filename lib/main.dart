import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('検索',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
          backgroundColor: Colors.white,
        ),
        body: Stack(
          children: [
            Image.asset(
              'assets/images/bg01.jpg',
            ),
            SearchScreen(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color.fromARGB(255, 123, 220, 250),
          currentIndex: 1,
          onTap: (index) {
            //タップされた時の処理
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.schedule),
              label: '時間割',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: '検索',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.help),
              label: '使い方',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.more_horiz),
              label: 'その他',
            ),
          ],
        ),
      ),
    );
  }
}

class SearchScreen extends StatefulWidget {
  @override
  SearchScreenState createState() => SearchScreenState();
}

class SearchScreenState extends State<SearchScreen> {
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;
  bool isChecked4 = false;
  bool isChecked5 = false;
  bool isChecked6 = false;
  bool isChecked7 = false;
  bool isChecked8 = false;
  bool isChecked9 = false;
  bool isChecked10 = false;
  bool isChecked11 = false;
  bool isChecked12 = false;
  bool isChecked13 = false;
  bool isChecked14 = false;
  bool isChecked15 = false;
  bool isChecked16 = false;
  bool isChecked17 = false;
  bool isChecked18 = false;

  List<bool> checkBoxValues = [false, false, false, false, false];
  List<String> texts = ['月曜', '火曜', '水曜', '木曜', '金曜'];

  List<bool> checkBoxValues2 = [false, false, false, false, false];
  List<String> texts2 = ['1限', '2限', '3限', '4限', '5限'];

  List<bool> checkBoxValues3 = [false, false];
  List<String> texts3 = ['6限', '7限'];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.lightBlueAccent,
                Colors.yellow.shade100,
              ],
            ),
          ),
          width: 500,
          height: 200,
          alignment: Alignment.center,
          child: Text(
            "SYLLABUS",
            style: TextStyle(
                fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: Text(
            '科目名・教員名',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(20.0),
          child: Container(
            width: double.infinity,
            height: 50.0,
            child: TextField(
              onChanged: (value) {
                print('検索結果: $value');
              },
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(0.0),
                  ),
                ),
              ),
            ),
          ),
        ),
        ExpansionTile(
          title: Text('日時'),
          children: <Widget>[
            Row(
              children: <Widget>[
                for (int i = 0; i < 5; i++)
                  Row(
                    children: <Widget>[
                      Checkbox(
                        value: checkBoxValues[i],
                        onChanged: (bool? value) {
                          setState(() {
                            checkBoxValues[i] = value!;
                          });
                        },
                      ),
                      Text(texts[i]),
                    ],
                  ),
              ],
            ),
            Row(
              children: <Widget>[
                for (int i = 0; i < 5; i++)
                  Row(
                    children: <Widget>[
                      Checkbox(
                        value: checkBoxValues2[i],
                        onChanged: (bool? value) {
                          setState(() {
                            checkBoxValues2[i] = value!;
                          });
                        },
                      ),
                      Text(texts2[i]),
                    ],
                  ),
              ],
            ),
            Row(
              children: <Widget>[
                for (int i = 0; i < 2; i++)
                  Row(
                    children: <Widget>[
                      Checkbox(
                        value: checkBoxValues3[i],
                        onChanged: (bool? value) {
                          setState(() {
                            checkBoxValues3[i] = value!;
                          });
                        },
                      ),
                      Text(texts3[i]),
                    ],
                  ),
              ],
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.all(5),
          child: Text(
            '授業形態',
            style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(height: 10.0),
        Row(
          children: [
            Checkbox(
              value: isChecked1,
              onChanged: (value) {
                setState(() {
                  isChecked1 = value!;
                });
              },
            ),
            Text('オンライン（ライブ）'),
          ],
        ),
        Row(
          children: [
            Checkbox(
              value: isChecked2,
              onChanged: (value) {
                setState(() {
                  isChecked2 = value!;
                });
              },
            ),
            Text('オンライン（オンデマンド）'),
          ],
        ),
        Row(
          children: [
            Checkbox(
              value: isChecked3,
              onChanged: (value) {
                setState(() {
                  isChecked3 = value!;
                });
              },
            ),
            Text('対面'),
          ],
        ),
        Padding(
          padding: EdgeInsets.all(5),
          child: Text(
            '選抜方法',
            style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(height: 10.0),
        Row(
          children: [
            Checkbox(
              value: isChecked4,
              onChanged: (value) {
                setState(() {
                  isChecked4 = value!;
                });
              },
            ),
            Text('なし'),
          ],
        ),
        Row(
          children: [
            Checkbox(
              value: isChecked5,
              onChanged: (value) {
                setState(() {
                  isChecked5 = value!;
                });
              },
            ),
            Text('抽選'),
          ],
        ),
        Row(
          children: [
            Checkbox(
              value: isChecked6,
              onChanged: (value) {
                setState(() {
                  isChecked6 = value!;
                });
              },
            ),
            Text('履修課題'),
          ],
        ),
        Padding(
          padding: EdgeInsets.all(5),
          child: Text(
            '言語',
            style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Row(
          children: [
            Checkbox(
              value: isChecked7,
              onChanged: (value) {
                setState(() {
                  isChecked7 = value!;
                });
              },
            ),
            Text("英語　"),
            Checkbox(
              value: isChecked8,
              onChanged: (value) {
                setState(() {
                  isChecked8 = value!;
                });
              },
            ),
            Text("中国語　　"),
            Checkbox(
              value: isChecked9,
              onChanged: (value) {
                setState(() {
                  isChecked9 = value!;
                });
              },
            ),
            Text("ドイツ語"),
          ],
        ),
        Row(
          children: [
            Checkbox(
              value: isChecked10,
              onChanged: (value) {
                setState(() {
                  isChecked10 = value!;
                });
              },
            ),
            Text("朝鮮語"),
            Checkbox(
              value: isChecked11,
              onChanged: (value) {
                setState(() {
                  isChecked11 = value!;
                });
              },
            ),
            Text("フランス語"),
            Checkbox(
              value: isChecked12,
              onChanged: (value) {
                setState(() {
                  isChecked12 = value!;
                });
              },
            ),
            Text("日本語"),
          ],
        ),
        Row(
          children: [
            Checkbox(
              value: isChecked13,
              onChanged: (value) {
                setState(() {
                  isChecked13 = value!;
                });
              },
            ),
            Text("マイ語 "),
            Checkbox(
              value: isChecked14,
              onChanged: (value) {
                setState(() {
                  isChecked14 = value!;
                });
              },
            ),
            Text("スペイン語"),
            Checkbox(
              value: isChecked15,
              onChanged: (value) {
                setState(() {
                  isChecked15 = value!;
                });
              },
            ),
            Text("その他"),
          ],
        ),
        Padding(
          padding: EdgeInsets.all(5),
          child: Text(
            '除外ワード',
            style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(height: 1),
        Row(
          children: [
            Checkbox(
              value: isChecked16,
              onChanged: (value) {
                setState(() {
                  isChecked16 = value!;
                });
              },
            ),
            Text('研究会'),
          ],
        ),
        Row(
          children: [
            Checkbox(
              value: isChecked17,
              onChanged: (value) {
                setState(() {
                  isChecked17 = value!;
                });
              },
            ),
            Text('体育'),
          ],
        ),
        Row(
          children: [
            Checkbox(
              value: isChecked18,
              onChanged: (value) {
                setState(() {
                  isChecked18 = value!;
                });
              },
            ),
            Text('言語'),
          ],
        ),
      ],
    ));
  }
}
