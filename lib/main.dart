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
    int _posVazia = _numero.lastIndexOf('');
    int _numeroAnterior = i - 1;
    int _proxNumero = i + 1;
    int _linhaAnterior = i - 4;
    int _proximaLinha = i + 4;

    if (_posVazia == _numeroAnterior) {
      _numero[_numeroAnterior] = _numero[i];

      _numero[i] = '';
    } else if (_posVazia == _proxNumero) {
      _numero[_proxNumero] = _numero[i];

      _numero[i] = '';
    } else if (_posVazia == _linhaAnterior) {
      _numero[_linhaAnterior] = _numero[i];

      _numero[i] = '';
    } else if (_posVazia == _proximaLinha) {
      _numero[_proximaLinha] = _numero[i];

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
    debugShowCheckedModeBanner: false;
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