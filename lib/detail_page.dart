import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';

import 'model.dart';

class DetailPage extends StatefulWidget {
  final Burc burc;
  DetailPage({required this.burc});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  
 Color appbarRengi = Colors.transparent;
  late PaletteGenerator _generator;

  @override
  void initState() {
    super.initState();
    appbarRenginiBul();
    print('init state çalıstı');
    // _generator = PaletteGenerator.fromImageProvider(AssetImage(assetName));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   toolbarHeight: 0,
      //   leading: Container(color: Colors.blue,),),
      body: CustomScrollView(
            slivers: [
              SliverAppBar(
                backgroundColor: appbarRengi,
                centerTitle: true,
                title: Text(widget.burc.burcAdi,style: TextStyle(color: Colors.white,),),
                expandedHeight: 200, //Image.asset("assets/images/banners/${burc.burcAdi.toString().toLowerCase()}.jpg").height,
              //  pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.asset("assets/images/banners/${widget.burc.burcAdi.toString().toLowerCase()}.jpg", fit: BoxFit.fill,),
                ),
                
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    child: Text(widget.burc.burcOzelligi, style: TextStyle(fontSize: 20),),
                  ),
                ),
              )
            ],
          ),
    );
  }

 void appbarRenginiBul() async {
    _generator = await PaletteGenerator.fromImageProvider(
        AssetImage("assets/images/banners/${widget.burc.burcAdi.toString().toLowerCase()}.jpg"));
    appbarRengi = _generator.dominantColor!.color;//_generator.vibrantColor!.color;
    setState(() {});
    print(appbarRengi);
  }
}


