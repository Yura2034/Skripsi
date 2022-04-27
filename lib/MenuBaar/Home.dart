import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'mobile.dart';
import'package:sekripsi/MenuBaar/Home.dart';
import 'package:sekripsi/MenuBaar/myplatform.dart';



class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  // ignore: deprecated_member_use
  List <Container> daftarTanamanGulma = List();

  var tumbuhan=[
    {"nama": "Amaranthus hybridus L",
      "gambar":"Amaranthus hybridus L.jpg",
      "NamaUmum" :"Bayam Duri",
      "Famili" :"Amaranthaceae",
      "PanjangDaun":"± 15 cm",
      "Manfaat": "pereda demam (antipiretik), peluruh kencing (diuretik), peluruh dahak (ekspektoran), penawar racun, menghilangkan bengkak, dan pembersih darah",
    },
   
    {"nama": "Impatiens balsamina L",
      "gambar":"Impatiens balsamina L.jpg",
      "NamaUmum" :"Bunga Pacar",
      "Famili" :"Balsaminaceae",
      "PanjangDaun":"2,7-9 cm",
      "Manfaat": "mengobati kanker saluran pencernaan bagian atas. Efek farmakologis Bunga sebagai peluruh haid (emenagog), tekanan darah tinggi (hipertensi), pembengkakan akibat terpukul (hematoma)",
    },

    {"nama": "Cleome viscosa L",
      "gambar":"Cleome viscosa L.jpg",
      "NamaUmum" :"Gulma Kutu",
      "Famili" :"Cleomaceae",
      "PanjangDaun":"± 4 cm",
      "Manfaat": "Dapat digunakan untuk menyembuhkan luka dan bisul.",
    },

    {"nama": "Ageratina riparia (Regel)",
      "gambar":"Ageratina riparia (Regel) R.M.King & H.Rob.jpg",
      "NamaUmum" :"Gulma Kutu",
      "Famili" :"Cleomaceae",
      "PanjangDaun":"± 4 cm",
      "Manfaat": "Dapat digunakan untuk menyembuhkan luka dan bisul.",
    },

    {"nama": "Ageratum conyzoides L",
      "gambar":"Ageratum conyzoides L.jpg",
      "NamaUmum" :"Gulma Kutu",
      "Famili" :"Cleomaceae",
      "PanjangDaun":"± 4 cm",
      "Manfaat": "Dapat digunakan untuk menyembuhkan luka dan bisul.",
    },

    {"nama": "Bidens pilosa L",
    "gambar":"Bidens pilosa L.jpg",
    "NamaUmum" :"Gulma Kutu",
    "Famili" :"Cleomaceae",
    "PanjangDaun":"± 4 cm",
    "Manfaat": "Dapat digunakan untuk menyembuhkan luka dan bisul.",
    },

    {"nama": "Austroepatorium inulifolium",
      "gambar":"Austroepatorium inulifolium (Kunth) R.M.King & H.Rob.jpg",
      "NamaUmum" :"Gulma Kutu",
      "Famili" :"Cleomaceae",
      "PanjangDaun":"± 4 cm",
      "Manfaat": "Dapat digunakan untuk menyembuhkan luka dan bisul.",
    },

    {"nama": "Crassocephalum crepidioides ",
      "gambar":"Crassocephalum crepidioides (Benth.) S.Moore.jpg",
      "NamaUmum" :"Gulma Kutu",
      "Famili" :"Cleomaceae",
      "PanjangDaun":"± 4 cm",
      "Manfaat": "Dapat digunakan untuk menyembuhkan luka dan bisul.",
    },

    {"nama": "Sphagneticola trilobata (L.) Pruski",
      "gambar":"Sphagneticola trilobata (L.) Pruski.jpg",
      "NamaUmum" :"Gulma Kutu",
      "Famili" :"Cleomaceae",
      "PanjangDaun":"± 4 cm",
      "Manfaat": "Dapat digunakan untuk menyembuhkan luka dan bisul.",
    },
    {"nama": "Ipomoea cairica (L.)",
      "gambar":"Ipomoea cairica (L.) Sweet.jpg",
      "NamaUmum" :"Gulma Kutu",
      "Famili" :"Cleomaceae",
      "PanjangDaun":"± 4 cm",
      "Manfaat": "Dapat digunakan untuk menyembuhkan luka dan bisul.",
    },

    {"nama": "Ipomoea indica (Burm.)",
      "gambar":"Ipomoea indica (Burm.) Merr..jpg",
      "NamaUmum" :"Gulma Kutu",
      "Famili" :"Cleomaceae",
      "PanjangDaun":"± 4 cm",
      "Manfaat": "Dapat digunakan untuk menyembuhkan luka dan bisul.",
    },

    {"nama": "Euphorbia heterophylla",
      "gambar":"Euphorbia heterophylla L..jpg",
      "NamaUmum" :"Gulma Kutu",
      "Famili" :"Cleomaceae",
      "PanjangDaun":"± 4 cm",
      "Manfaat": "Dapat digunakan untuk menyembuhkan luka dan bisul.",
    },

    {"nama": "Euphorbia hirta L.",
      "gambar":"Euphorbia hirta L..jpg",
      "NamaUmum" :"Gulma Kutu",
      "Famili" :"Cleomaceae",
      "PanjangDaun":"± 4 cm",
      "Manfaat": "Dapat digunakan untuk menyembuhkan luka dan bisul.",
    },

    {"nama": "Calliandra houstoniana",
      "gambar":"Calliandra houstoniana var. calothyrsus (Meisn.) Barneby.jpg",
      "NamaUmum" :"Gulma Kutu",
      "Famili" :"Cleomaceae",
      "PanjangDaun":"± 4 cm",
      "Manfaat": "Dapat digunakan untuk menyembuhkan luka dan bisul.",
    },

    {"nama": "Sida rhomboifolia L",
      "gambar":"Sida rhomboifolia L.jpg",
      "NamaUmum" :"Gulma Kutu",
      "Famili" :"Cleomaceae",
      "PanjangDaun":"± 4 cm",
      "Manfaat": "Dapat digunakan untuk menyembuhkan luka dan bisul.",
    },

    {"nama": "Lantana camara L",
      "gambar":"Lantana camara L.jpg",
      "NamaUmum" :"Gulma Kutu",
      "Famili" :"Cleomaceae",
      "PanjangDaun":"± 4 cm",
      "Manfaat": "Dapat digunakan untuk menyembuhkan luka dan bisul.",
    },
  ];

  _buatlish()async{
    for (var i = 0; i< tumbuhan.length; i++){
      final tumbuhannya = tumbuhan [i];
      final String gambar = tumbuhannya["gambar"];
      final String NamaUmum = tumbuhannya["NamaUmum"];
      final String Famili = tumbuhannya['Famili'];
      final String PanjangDaun = tumbuhannya['PanjangDaun'];
      final String Manfaat = tumbuhannya['Manfaat'];

      daftarTanamanGulma.add(
          Container(
            padding:  const EdgeInsets.all(10.0),
            child: Card(
                child: Column(
                  children: [
                    Hero(
                      tag: tumbuhannya['nama'],
                      child: Material(
                        child:InkWell(
                          onTap: ()=> Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context)=>
                                  Detail(nama: tumbuhannya['nama'],
                                      gambar: gambar,
                                      NamaUmum: NamaUmum,
                                      Famili: Famili,
                                      PanjangDaun: PanjangDaun,
                                      Manfaat: Manfaat,
                                  ))),
                          child: Image.asset("assets/$gambar",height: 100.0, width:100.0,fit: BoxFit.cover,),
                        ) ,
                      ),
                    ),
                    const Padding(padding: EdgeInsets.all(10.0),),
                    Text(tumbuhannya['nama'], style: const TextStyle(fontSize: 15.0),),
                  ],
                )
            ),
          )
      );
    }
  }

  @override
  void initState() {
    _buatlish();
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text ("Tanaman Gulma",
            style: TextStyle(
                color: Colors.white)),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: daftarTanamanGulma,
      ),
    );
  }
}


class Detail extends StatelessWidget {
  const Detail({Key key, this.nama, this.gambar,this.NamaUmum, this.Famili, this.PanjangDaun, this.Manfaat}) : super(key: key);
  final String nama;
  final String gambar;
  final String NamaUmum;
  final String Famili;
  final String PanjangDaun;
  final String Manfaat;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            height: 300,
            child: Hero(tag: nama,
              child: Material(
                child: InkWell(
                  child: Image.asset("assets/$gambar",fit: BoxFit.contain,),
                ),
              ),
            ),
          ),


          Bagiannama(nama: nama,),
        Keterangan(NamaUmum: NamaUmum, Famili: Famili, PanjangDaun: PanjangDaun,Manfaat: Manfaat,),
        TTSPlay(manfaatText: Manfaat,),

          //
        ],
      ),
    );
  }
}

class Bagiannama extends StatelessWidget {
  final String nama;
  Bagiannama({Key key, this.nama}) : super(key: key);

  FlutterTts flutterTts = FlutterTts();


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(09.0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(nama,
                  style: const TextStyle(
                      fontSize: 20.0,
                      color: Colors.green),
                ),
              ],
            ),
          ),
          // Row(
          //   children: const [
          //     Icon(
          //       Icons.mic, size: 30.0, color: Colors.green,
          //     )
          //   ],
          // )
        ],
      ),
    );
  }
}

class Keterangan extends StatelessWidget {
final String NamaUmum;
final String Famili;
final String PanjangDaun;
final String Manfaat;

const Keterangan({Key key, this.NamaUmum, this.Famili, this.PanjangDaun, this.Manfaat}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Nama Umum    : $NamaUmum",style: const TextStyle(fontSize: 19.0),),
          SizedBox(height: 7,),
          Text("Famili                 : $Famili",style: const TextStyle(fontSize: 19.0),),
          SizedBox(height: 7,),
          Text("Panjang Daun   : $PanjangDaun",style: const TextStyle(fontSize: 19.0),),
          SizedBox(height: 7,),
          Text("Manfaat             : $Manfaat",style: const TextStyle(fontSize: 19.0),),
        ],
      ),

    );
  }
}

class TTSPlay extends StatefulWidget {

  TTSPlay({this.manfaatText});

  final manfaatText;

  @override
  State<TTSPlay> createState() => _TTSPlayState();
}

class _TTSPlayState extends State<TTSPlay> {

  String manfaatText;
  FlutterTts flutterTts;
  bool isPlaying = false;



  @override
  void initState()  {
    // TODO: implement initState
    super.initState();
    manfaatText = widget.manfaatText;
    initTts();
  }

  initTts()  {
    flutterTts = FlutterTts();

    if (PlatformUtil.myPlatform() == MyPlatform.ANDROID) {
      flutterTts.ttsInitHandler(() {
        setTtsLanguage();
      });
    } else if (PlatformUtil.myPlatform() == MyPlatform.IOS) {
      setTtsLanguage();
    }

    flutterTts.setStartHandler(() {
      setState(() {
        print('playing');
        isPlaying = true;
      });
    });

    flutterTts.setCompletionHandler(() {
      setState(() {
        print('complete');
        isPlaying = false;
      });
    });

    flutterTts.setErrorHandler((message) {
      setState(() {
        print('error: $message');
        isPlaying = false;
      });
    });


  }


  Future setTtsLanguage() async {
    await flutterTts.setLanguage("id-ID");
  }

  Future _speak() async {
    if (manfaatText != null && manfaatText.isNotEmpty) {
      var result = await flutterTts.speak(manfaatText);
      if (result == 1)
        setState(() {
          isPlaying = true;
        });
    }
  }
  Future _stop() async {
    var result = await flutterTts.stop();
    if (result == 1)
      setState(() {
        isPlaying = false;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          // Text(manfaatText),
          SizedBox(height: 20.0,),
          TextButton(
            onPressed: () {
              _speak();
            },
            child: Icon(Icons.mic_none, size: 60, color: Colors.green,),
          )
        ],
      )
    );
  }
}



// child: const Card(
// child: Padding(
// padding: EdgeInsets.all(8.0),
// child: Text ("data", style: TextStyle (fontSize: 18.0),
// ),
// ),
