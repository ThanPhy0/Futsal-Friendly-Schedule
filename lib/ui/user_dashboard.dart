import "package:flutter/material.dart";
import 'package:shared_preferences/shared_preferences.dart';

class UserDashboard extends StatefulWidget {
  const UserDashboard({Key? key}) : super(key: key);

  @override
  State<UserDashboard> createState() => _UserDashboardState();
}

class _UserDashboardState extends State<UserDashboard> {
  SharedPreferences? localStorage;
  String? userName;
  @override
  void initState() async{
    // TODO: implement initState
    super.initState();
    localStorage = await SharedPreferences.getInstance();
    userName = await localStorage?.getString("user_name");
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Futsal Friendly Schedule"),
        ),
        body: Column(
        children: [
          Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      const CircleAvatar(
                    backgroundColor: Colors.redAccent,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text(
                    "Christopher",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    )
                    ),
                    ],
                  ),
                ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: ElevatedButton(
                      onPressed: ()=>{},
                      child: Row(
                        children: [
                          Icon(
                            Icons.add,
                          ),
                          SizedBox(width: 10,),
                          Text(
                            "Join"
                          ),
                        ],
                      ),
                    ),
                  )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Container(
                width: double.infinity,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
          ),
        ],
      ),
      ),
    );
  }
}