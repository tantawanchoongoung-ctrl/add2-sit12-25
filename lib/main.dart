import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
            'หน้าแรก',
          style: TextStyle(
            color: Colors.black,//สีอักษร
            backgroundColor: Colors.amber,//สีพื้นหลัง
            fontSize: 32,//ขนาดอักษร
            fontWeight: FontWeight.w800,//ความหนาอักษร
          ),
        ),
        leading: Text("Leading"),
        actions: [
          Icon(
            Icons.menu,//ชื่อไอคอน
            size: 60, //ขนาด
            color: Colors.blue,//สี
          ),
          Icon(Icons.person)
        ],
      ),
      body: Column(
        children:[
          Text("Hello"),
          Text("Lunar"),
          Text("ลูน่ามาแล้วววววว"),
          Text("ดีจ้าาาคุนยายยยยย"),
          Row(
            children: [
              //
              Image.network( //ดึงภาพจากลิงค์
                  "https://i.pinimg.com/736x/b5/a7/3a/b5a73a69b658417481b2f765735d3181.jpg"
                  ,width: 200,//กว้าง
                height: 200,//สูง
                fit: BoxFit.cover,
              ),
              ClipOval( //ดัดเป็นวงรี
                child:Image.asset(
                  "assets/_.jpeg"
                  ,width: 200,
                  height: 200,
                  fit: BoxFit.cover,)
              )

            ],
          ),
          Row(
            children: [
              Expanded(//ขยาย
                  child: ElevatedButton(
                      onPressed: () => {},
                      child: Text("ปุ่ม ลูน่าเอง"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber,
                      foregroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)
                      )
                    )
                  )
              ),
              SizedBox(
                width: 20, //เว้นแนวนอน
                height: 100,//เว้นแนวตั้ง
              ),
              Expanded(
                  child: OutlinedButton(onPressed: () => {},
                      child: Text("ปุ่ม คุนยาย"),
                      style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.orangeAccent,
                      ),
                  )
              )
            ],
          )
        ]
        ),
      );
  }
}
