import 'package:burc_rehberi/detail_page.dart';
import 'package:burc_rehberi/model.dart';
import 'package:burc_rehberi/string.dart';
import 'package:flutter/material.dart';

class BurcListesi extends StatelessWidget {
  const BurcListesi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: burcAdlari.length,
        itemBuilder: (context, index) {
          var instaceOFburcAdlari =
              Burc(burcAdlari[index], burcTarihleri[index], BURC_GENEL_OZELLIKLERI[index]);
          return GestureDetector(
              onTap: () {
                
                
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailPage(
                              burc: instaceOFburcAdlari,
                            )));
              },
              child: Card(
                elevation: 5,
                shape: const RoundedRectangleBorder(
                  //  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10.0), topRight: Radius.circular(10.0)),
                    side: BorderSide(width: 2,color: Colors.blue),
                  ),
                child: ListTile(
                  trailing: Icon(Icons.arrow_forward_ios),
                  leading:
                  CircleAvatar(child: Image.asset("assets/images/icons/${instaceOFburcAdlari.burcAdi.toString().toLowerCase()}.jpg"),
                  backgroundColor: Colors.white,
                  
                  ),
                  // Image.asset("assets/images/${instaceOFburcAdlari.burcAdi.toString().toLowerCase()}.jpg"),
                  title: Text(instaceOFburcAdlari.burcAdi),
                  subtitle: Text(instaceOFburcAdlari.burcTarihi),
                ),
              ));
        });
  }
}
