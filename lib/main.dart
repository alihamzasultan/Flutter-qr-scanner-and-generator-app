import 'package:flutter/material.dart';
import 'package:qr_scanner/generate_qr_code.dart';
import 'package:qr_scanner/scan_qr_code.dart';

void main(){

  runApp(const MyApp());
}

class MyApp extends StatelessWidget{

  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title:'QR',
      debugShowCheckedModeBanner: false,
      home: HomePage(),

    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('QR CODE SCANNER'), backgroundColor: Colors.blue,),
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: (){
            setState(() {
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ScanQRCode()));
              
            });
          }, child: Text('Scan Qr Code')),
         SizedBox(height: 40, ),
         ElevatedButton(onPressed: (){
          setState(() {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>GenerateQRCode()));
              
          });
         }, child: Text('Generate QR Code'))

        ],
      ),)
    );
  }
}