import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // เอาป้าย Debug ออกเพื่อให้สวยงาม
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(),
        '/second': (context) => const SecondPage(),
      },
    );
  }
}

// ================== หน้าแรก (คงเดิมไว้ตามโค้ดของคุณ) ==================
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          // เพิ่ม ScrollView เผื่อหน้าจอเล็ก
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(color: Colors.pink[50]),
                padding: const EdgeInsets.all(30),
                child: Center(
                  child: Column(
                    children: [
                      const Text(
                        "ข้อมูลส่วนตัว",
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w900,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 25),
                      Container(
                        padding: const EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          color: Colors.pink[200],
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: ClipOval(
                          child: Image.network(
                            "https://scontent.fbkk5-1.fna.fbcdn.net/v/t39.30808-6/487849031_2056391798162069_1909274992079965691_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=833d8c&_nc_ohc=JbyTcYMEx5QQ7kNvwH0kA6N&_nc_oc=AdkhELBxrNH6_CKXIxk0LLvry1XVYLeU48U1fSzOMjWrSJ7WBFua8VL8_avb2fQXFj4&_nc_zt=23&_nc_ht=scontent.fbkk5-1.fna&_nc_gid=JR9axQMlyQnSWdE69sQU7g&oh=00_Afi1wsPOSnw69e61jRmGtSB-lUFn1H2pG7MHMXszXG4mRA&oe=69330B38",
                            width: 200,
                            height: 200,
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) =>
                                const Icon(Icons.person, size: 100),
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      const Text(
                        "Jantira  Chobdee",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "Toey",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "Jantira.Chobdee@e-tech.ac.th",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.pink[100],
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Icon(
                            Icons.phone,
                            size: 40,
                            color: Colors.pink,
                          ),
                        ),
                        const SizedBox(width: 18),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [Text("เบอร์"), Text("094-234-8352")],
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.pink[100],
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Icon(
                            Icons.cake,
                            size: 40,
                            color: Colors.pink,
                          ),
                        ),
                        const SizedBox(width: 18),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [Text("Birthday"), Text("28 FEB 2005")],
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.pink[100],
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Icon(
                            Icons.phone,
                            size: 40,
                            color: Colors.pink,
                          ),
                        ),
                        const SizedBox(width: 18),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [Text("ที่อยู่"), Text("ชลบุรี")],
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.pink[100],
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Icon(
                            Icons.phone,
                            size: 40,
                            color: Colors.pink,
                          ),
                        ),
                        const SizedBox(width: 18),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("การศึกษา"),
                            Text("วิทยาลัยเทคโนโลยีภาคตะวันออก(อี.เทค)"),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () =>
                            Navigator.pushNamed(context, '/second'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.pink,
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(vertical: 15),
                        ),
                        child: const Text(
                          "Next",
                          style: TextStyle(fontSize: 18),
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


class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 50, left: 20, right: 20, bottom: 20),
              width: double.infinity,
              decoration: const BoxDecoration(color: Colors.black12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          color: Colors.pink[200],
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: ClipOval(
                          child: Image.network(
                            // URL รูปโปรไฟล์หลัก
                            "https://scontent.fbkk5-6.fna.fbcdn.net/v/t39.30808-6/477519271_2015695745565008_3497196055026932845_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=833d8c&_nc_ohc=23ElA4gW3ewQ7kNvwEILyWm&_nc_oc=Adn2CbKqnHIiNnRacfoeGISP8_5u2pj2jr5APsw-u6w2sqg_nvTss0PfO3e4rWQEIlI&_nc_zt=23&_nc_ht=scontent.fbkk5-6.fna&_nc_gid=km4lSLHGTt4gIvEmcmWF6g&oh=00_Afm5kPUS1zq98qWHSm1qRMPejG-pvTVZV0YonGWUwhj8FQ&oe=69396F74",
                            width: 80,
                            height: 80,
                            fit: BoxFit.cover,

                          ),
                        ),
                      ),

                      const SizedBox(width: 20),

                      // สถิติ 1
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("5", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                          Text("กำลังติดตาม"),
                        ],
                      ),
                      const SizedBox(width: 20),

                      // สถิติ 2
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("828.1K", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                          Text("ผู้ติดตาม"),
                        ],
                      ),
                      const SizedBox(width: 20),

                      // สถิติ 3
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("329.9 K", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                          Text("ถูกใจ"),
                        ],
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),

                  // ---------------------------------------------
                  // ส่วนกลาง: ชื่อ และ เครื่องหมายติ๊กถูก
                  // ---------------------------------------------
                  const Row(
                    children: [
                      Text(
                        "Jantira Chobdee",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 5),

                      // [จุดที่ 2] ติ๊กถูก: กลับมาใช้ Icon เหมือนเดิม
                      Icon(Icons.check_circle, color: Colors.blue, size: 20),
                    ],
                  ),

                  const SizedBox(height: 20),

                  // ---------------------------------------------
                  // ปุ่มกดติดตาม
                  // ---------------------------------------------
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const MyApp()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        foregroundColor: Colors.white,
                        minimumSize: const Size(double.infinity, 50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8))),
                    child: const Text(
                      "ติดตาม",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),

                  const SizedBox(height: 20),

                  // ---------------------------------------------
                  // รูปภาพด้านล่าง
                  // ---------------------------------------------
                  Row(
                    children: [
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            "https://scontent.fbkk11-1.fna.fbcdn.net/v/t39.30808-6/415929127_1744339919367260_6094816780769743436_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=a5f93a&_nc_ohc=UprB7kWvMO4Q7kNvwHIXvu_&_nc_oc=Adkant122hY0K-iMZubv0CS2mRjuZoHWFn_w6DrRS3kQ3rX2jI6EOKHoQeqw-16he58&_nc_zt=23&_nc_ht=scontent.fbkk11-1.fna&_nc_gid=muiXguvMMkp39ZJ16mQrqA&oh=00_AfnAEsOJgM4Y0xCU6uWkmKrRrnurofgs1J4vsclT6EEbUg&oe=69396A45",
                            height: 180,
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) => Container(height: 180, color: Colors.grey),
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            "https://scontent.fbkk11-1.fna.fbcdn.net/v/t39.30808-6/477679139_2015701655564417_4137872474017075501_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=a5f93a&_nc_ohc=5FfYvoYNibcQ7kNvwEfKqN4&_nc_oc=AdnWRY8neaWoC_djSd33Mf7GNv09iSWYPk-1ss4Clal38t9wXvQtHs2jR6lepNdlp54&_nc_zt=23&_nc_ht=scontent.fbkk11-1.fna&_nc_gid=r2jvHdJZBSU2UfZ9jC2kBg&oh=00_AflGlqz55C_a1QdLnIsGQFa_nUIS7jcE8EK9P3RzMFb2JQ&oe=69398053",
                            height: 180,
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) => Container(height: 180, color: Colors.grey),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}