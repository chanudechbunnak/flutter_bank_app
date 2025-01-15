import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> imageUrls = [
    "https://image.posttoday.com/media/content/2022/06/16/E567DF170A47524DFB9CE8C1D08F4A74.jpg?x-image-process=style/lg",
    "https://www.sentangsedtee.com/wp-content/uploads/2023/09/%E0%B8%81%E0%B8%A3%E0%B8%B8%E0%B8%87%E0%B9%84%E0%B8%97%E0%B8%A2.jpg",
    "https://www.thaipr.net/wp-content/uploads/2024/09/PromptPay-1-e1726799181784.png",
    "https://krungthai.com/ktb/imgUpload/news/next-invest.jpg",
    "https://www.maoinvestor.com/wp-content/uploads/2023/03/Thumbnail2-3.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue.shade600, Colors.white],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.fromLTRB(24, 48, 24, 24),
          child: Column(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center, // Align to the left
                    children: [
                      Text(
                        "Krungthai",
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      ),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "NE",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                              ),
                            ),
                            TextSpan(
                              text: "X",
                              style: TextStyle(
                                color: Colors.yellow.shade700,
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                              ),
                            ),
                            TextSpan(
                              text: "T",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(Icons.person),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.notifications_none_outlined,
                            color: Colors.white,
                          ),
                          Padding(padding: EdgeInsets.only(right: 8)),
                          Icon(
                            Icons.logout_outlined,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 24),
                width: double.infinity,
                height: 100,
                child: Swiper(
                  itemBuilder: (BuildContext context, int index) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.network(
                        imageUrls[index],
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    );
                  },
                  itemCount: imageUrls.length,
                  autoplay: true,
                  pagination: SwiperPagination(),
                  control: SwiperControl(),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 16, left: 8, right: 8),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 60,
                          child: Column(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 32,
                                child: Image.network("https://cdn-icons-png.flaticon.com/512/3235/3235980.png", width: 30,),
                              ),
                              Text("โอนเงิน")
                            ],
                          ),
                        ),
                        Container(
                          width: 60,
                          child: Column(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 32,
                                child: Image.network("https://cdn-icons-png.flaticon.com/512/6379/6379126.png", width: 30,),
                              ),
                              Text("เติมเงิน")
                            ],
                          ),
                        ),
                        Container(
                          width: 60,
                          child: Column(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 32,
                                child: Image.network("https://cdn-icons-png.flaticon.com/512/7176/7176657.png" ,width: 30,),
                              ),
                              Text("จ่ายบิล")
                            ],
                          ),
                        ),
                        Container(
                          width: 60,
                          child: Column(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 32,
                                child: Image.network("https://cdn-icons-png.flaticon.com/512/8338/8338916.png", width: 30,),
                              ),
                              Text("ถอนเงินไม่ใช้บัตร", overflow: TextOverflow.ellipsis,)
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(bottom: 24)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 60,
                          child: Column(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 32,
                                child: Image.network("https://cdn-icons-png.flaticon.com/512/3529/3529189.png", width: 30,),
                              ),
                              Text("กองทุน")
                            ],
                          ),
                        ),
                        Container(
                          width: 60,
                          child: Column(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 32,
                                child: Image.network("https://cdn-icons-png.flaticon.com/512/5709/5709623.png", width: 30,),
                              ),
                              Text("ประกัน")
                            ],
                          ),
                        ),
                        Container(
                          width: 60,
                          child: Column(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 32,
                                child: Image.network("https://cdn-icons-png.flaticon.com/512/3133/3133419.png", width: 30,),
                              ),
                              Text("สินเชื่อ")
                            ],
                          ),
                        ),
                        Container(
                          width: 60,
                          child: Column(
                            children: [
                              CircleAvatar(
                                backgroundColor: Color.fromRGBO(220, 220, 220, 0.5),
                                radius: 32,
                                child: Icon(Icons.add, color: Colors.white, size: 40,),
                              ),
                              Text(
                                "เพิ่ม",
                                overflow: TextOverflow.ellipsis,)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 16)),
              Divider(
                color: Colors.grey.shade500,
              ),
              Container(
                padding: EdgeInsets.only(top: 8, bottom: 8,),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16
                        ),
                        "รายการโปรด"),
                    Text(
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.blue
                        ),
                        "ดูทั้งหมด"),
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 32,
                      backgroundImage: NetworkImage("https://plus.unsplash.com/premium_photo-1689568126014-06fea9d5d341?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D"),
                    ),
                    Padding(padding: EdgeInsets.only(right: 24)),
                    CircleAvatar(
                      radius: 32,
                      backgroundColor: Color.fromRGBO(220, 220, 220, 0.5),
                      child: Icon(Icons.add, color: Colors.white, size: 40,),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Home',
            activeIcon: Icon(Icons.home_filled, size: 24,)
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet),
            label: 'Accounts',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.qr_code_scanner_rounded),
            label: 'Scan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business_center),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}

