import "package:flutter/material.dart";

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
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
      )
      ),
    ),
  );
}







// Padding(
//             padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
//             child: 
//           )