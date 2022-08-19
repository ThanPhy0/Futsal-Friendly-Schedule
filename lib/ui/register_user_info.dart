import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:futsal_friendly_schedule/ui/user_dashboard.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserRegistration extends StatefulWidget {
  const UserRegistration({Key? key}) : super(key: key);

  @override
  State<UserRegistration> createState() => _UserRegistrationState();
}

class _UserRegistrationState extends State<UserRegistration> {
  TextEditingController nameController = new TextEditingController();
  TextEditingController phoneNumberController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Futsal Friendly Schedule"),
        ),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                width: 200,
                height: 200,
                child: CarouselSlider(
                  options: CarouselOptions(                
                    height: 300,
                  ),
                  items: [
                    "assets/img/manu.png",
                    "assets/img/manu1.png",
                    "assets/img/manu2.png"
                  ].map((i){
                    return Builder(
                      builder: (BuildContext context){
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          // margin: EdgeInsets.symmetric(horizontal: 5.0),
                          child: Column(
                            children: [
                                Image.asset(i),
                              SizedBox(height: 10,),
                              if(i == "assets/img/manu.png")
                                Text("", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),)
                            ],
                          ),
                        );
                      },
                    );
                  }).toList(),
                ),
              ),
              SizedBox(height: 5),
              TextField(
                controller: nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  hintText: "Enter User Name"
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                controller: phoneNumberController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  hintText: "Enter Phone Number"
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: 100,
                height: 40,
                child: ElevatedButton(
                  child: Text("Register!"),
                  onPressed: () async{
                    SharedPreferences localStorage = await SharedPreferences.getInstance();
                    localStorage.setString("user_name", nameController.text.toString());
                    localStorage.setString("phone_number", phoneNumberController.text.toString());
                    localStorage.setString("registered", "registered");
                    // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> UserDashboard()));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}