import 'package:flutter/material.dart';

class screen extends StatefulWidget {
  const screen({super.key});

  @override
  State<screen> createState() => _screenState();
}

class _screenState extends State<screen> {
  @override
  Widget build(BuildContext context) {
    int current = 0;
    bool mode = false;
    return Scaffold(
      backgroundColor: Color(0xff171C18),
      appBar: AppBar(
        backgroundColor: Color(0xff171C18),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: current,
        onTap: (value) {
          setState(() {
            current = value;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.analytics), label: 'Analystics'),
          BottomNavigationBarItem(
              icon: Icon(Icons.medication_outlined), label: 'Prescriptions'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 300,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xff282828),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 15,
                ),
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage("images/ana.jpg"),
                  backgroundColor: Colors.green,
                ),
                SizedBox(height: 10),
                Text(
                  "Muhammed Ashraf",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Row(
                  children: [
                    Expanded(
                        child: Container(
                      margin: EdgeInsets.all(10),
                      height: 140,
                      padding: EdgeInsets.all(7),
                      decoration: BoxDecoration(
                          color: Color(0xffCEE3F8),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.calendar_month_rounded,
                            color: Colors.blue,
                          ),
                          SizedBox(height: 60),
                          Text(
                            "Age",
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          ),
                          Row(
                            children: [
                              Text(
                                "26",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              Text(" years")
                            ],
                          ),
                        ],
                      ),
                    )),
                    Expanded(
                        child: Container(
                      margin: EdgeInsets.all(10),
                      height: 140,
                      padding: EdgeInsets.all(7),
                      decoration: BoxDecoration(
                          color: Color(0xffC6EFC5),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.balance,
                            color: Colors.green,
                          ),
                          SizedBox(height: 60),
                          Text(
                            "Weight",
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          ),
                          Row(
                            children: [
                              Text(
                                "78",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              Text(" kg")
                            ],
                          ),
                        ],
                      ),
                    )),
                    Expanded(
                        child: Container(
                      margin: EdgeInsets.all(10),
                      height: 140,
                      padding: EdgeInsets.all(7),
                      decoration: BoxDecoration(
                          color: Color(0xffFFE6C5),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.height,
                            color: Color(0xffFB9504),
                          ),
                          SizedBox(height: 60),
                          Text(
                            "Height",
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          ),
                          Row(
                            children: [
                              Text(
                                "179.0",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              Text(" cm")
                            ],
                          ),
                        ],
                      ),
                    )),
                  ],
                )
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 150,
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xff282828),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.sunny,
                      color: Colors.yellow,
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Light Theme",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 150),
                    Switch(
                      value: mode,
                      onChanged: (value) {
                        setState(() {
                          mode = value;
                        });
                      },
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  children: [
                    Icon(
                      Icons.language,
                      color: Colors.green,
                    ),
                    SizedBox(width: 10),
                    Text(
                      "English",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 220),
                    Icon(
                      Icons.arrow_drop_down,
                      color: Colors.grey,
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 100,
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xff282828),
            ),
            child: Row(
              children: [
                Icon(Icons.logout, color: Colors.white),
                SizedBox(width: 15),
                Text(
                  "Logout",
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
