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
            colors: [Colors.blue.shade700, Colors.white],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.fromLTRB(24, 48, 24, 24),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    child: Icon(Icons.person),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start, // Align to the left
                    children: [
                      Row(
                        children: [
                          Text(
                            "Krungthai",
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          ),
                        ],
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
                    children: [
                      Icon(
                        Icons.notifications_none_outlined,
                        color: Colors.white,
                      ),
                      Padding(padding: EdgeInsets.only(right: 2)),
                      Icon(
                        Icons.logout_outlined,
                        color: Colors.white,
                      )
                    ],
                  ),
                ],
              ),
              Padding(padding: EdgeInsets.only(bottom: 24)),
              Container(
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
                                radius: 32,
                                child: Icon(Icons.add),
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
              Padding(padding: EdgeInsets.only(bottom: 8)),
              Row(
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
              Padding(padding: EdgeInsets.only(bottom: 8)),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 32,
                    backgroundImage: NetworkImage("https://plus.unsplash.com/premium_photo-1689568126014-06fea9d5d341?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 8,
              spreadRadius: 2,
            ),
          ],
        ),
        child: NavigationBar(
          backgroundColor: Colors.white,
          destinations: [
            NavigationDestination(
              icon: Icon(Icons.home_filled, color: Colors.blue,),
              label: 'Home',
            ),
            NavigationDestination(
              icon: Icon(Icons.payment_outlined, color: Colors.grey,),
              label: 'Account',
            ),
            NavigationDestination(
              icon: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue.shade600, // Blue background for the circle
                ),
                child: Icon(
                  Icons.qr_code_scanner_rounded,
                  color: Colors.white, // White icon color
                  size: 40, // Larger icon size
                ),
              ),
              label: 'Scan',
            ),
            NavigationDestination(
              icon: Icon(Icons.grid_view_outlined, color: Colors.grey,),
              label: 'Services',
            ),
            NavigationDestination(
              icon: Icon(Icons.settings_outlined, color: Colors.grey,),
              label: 'Setting',
            ),
          ],
        ),
      ),
    );
  }
}
