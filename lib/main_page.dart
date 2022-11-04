
import 'package:burc_rehberi/burc_listesi.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Burçlar Rehberi'),
        ),
        body: Center(
          child: Container(
            child: const Expanded(child: BurcListesi())
          ),
        ),
      );
  }
}