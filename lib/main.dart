import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jogo Dev Mobile',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> _numero =
      List.generate(16, (index) => index == 0 ? '' : index.toString());
  _mudaNum(int i) {
    int _emptyIndex = _itens.lastIndexOf('');
    int _previousItem = i - 1;
    int _nextItem = i + 1;
    int _previousRow = i - 4;
    int _nextRow = i + 4;

    if (_emptyIndex == _previousItem) {
      _numero[_previousItem] = _itens[i];

      _numero[i] = '';
    } else if (_emptyIndex == _nextItem) {
      _numero[_nextItem] = _itens[i];

      _numero[i] = '';
    } else if (_emptyIndex == _previousRow) {
      _numero[_previousRow] = _itens[i];

      _numero[i] = '';
    } else if (_emptyIndex == _nextRow) {
      _numero[_nextRow] = _itens[i];

      _numero[i] = '';
    }
    setState(() {});
  }

  @override
  void initState() {
    _numero.shuffle();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    debugShowCheckedModeBanner:
    false;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Jogo Dev Mobile'),
      ),
      body: Center(
        child: AspectRatio(
            aspectRatio: 1,
            child: GridView.count(
              crossAxisCount: 4,
              children: [
                for (int i = 0; i < 16; i++)
                  InkWell(
                    onTap: () {
                      _mudaNum(i);
                    },
                    child: Container(
                      margin: const EdgeInsets.all(5),
                      child: Center(
                        child: Text(
                          '${_numero[i]}',
                          style: const TextStyle(
                              fontSize: 20),
                        ),
                      ),
                    ),
                  )
              ],
            )),
      ),
    );
  }
}