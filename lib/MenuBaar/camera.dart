import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tflite/tflite.dart';
import 'package:flutter/material.dart';
import 'package:sekripsi/MenuBaar/Home.dart';

class camera extends StatefulWidget {
   const camera ({Key key}) : super(key: key);

  @override
  State<camera> createState() => _cameraState();
}

class _cameraState extends State<camera> {

  bool _loading = true;
  File _image;
  List _output;
  final picker = ImagePicker();

  @override
  void initState(){
    super.initState();
    loadModel().then((value) {
      setState(() {});
    });
  }


  classifyImage(File image) async{
    var output = await Tflite.runModelOnImage(
      path: image.path,
      numResults: 2,
      threshold: 0.5,
      imageMean: 127.5,
      imageStd: 127.5,
        asynch: true);
    setState(() {
      _output = output;
      _loading =false;

    });
  }

  loadModel() async{
    await Tflite.loadModel(
        model: 'assets/model_unquant.tflite',
        labels: 'assets/labels.txt',
        isAsset :true,);

  }

  @override
  void dispose() {
    // TODO: implement dispose
    Tflite.close();
    super.dispose();
  }

  pickImage() async {
    // ignore: deprecated_member_use
    var image = await picker.getImage(
        source: ImageSource.camera);
    if (image == null) return null;

    setState(() {
      _image = File(image.path);
    });

    classifyImage(_image);
  }

  pickGalleryImage() async {
    // ignore: deprecated_member_use
    var image = await picker.getImage(
        source: ImageSource.gallery);
    if (image == null) return null;

    setState(() {
      _image = File(image.path);
    });

    classifyImage(_image);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color (0xfffff),
      body:SingleChildScrollView (
        child:  Container (padding: EdgeInsets.symmetric(horizontal:24 ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50,),
              const Text('GULMA DETECTION',
                style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),),
              SizedBox(height: 10),
              const Text('Deteksi Tanaman Liar',
                  style:
                  TextStyle
                    (color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 28,)),
              const SizedBox(height: 60),
              Center (child: _loading ?
              Container(
                width: 600,
                child: Column(children: [
                  Image.asset('assets/tanaman.png'),
                ],
                ),
              )
                  : Container(
                child: Column (
                  children: [
                    Container(
                      height: 250,
                      child: Image.file(_image),
                    ),
                    const SizedBox(height: 20,),
                    _output != null ? Text('${_output[0]['label']}', style: const TextStyle (
                      color: Colors.black,
                      fontSize:20,),)
                        : Container(),
                    const SizedBox(height:10),
                  ],
                ),

              ),
              ),
              const SizedBox(height: 50),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Column (children: [
                  GestureDetector(
                    onTap:pickImage,
                    child: Container (
                      width: MediaQuery.of(context).size.width - 150,
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric
                        (horizontal: 24, vertical: 18),
                      decoration: BoxDecoration (color: Colors.green,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Text('Camera Roll',
                        style: TextStyle(
                            color: Colors.black, fontSize: 17),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15,),
                  GestureDetector(
                    onTap: pickGalleryImage,
                    child: Container (
                      width: MediaQuery.of(context).size.width - 150,
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric
                        (horizontal: 24, vertical: 18),
                      decoration: BoxDecoration (color: Colors.green,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Text('Import from Galery',
                        style: TextStyle(
                            color: Colors.black, fontSize: 17),
                      ),
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


