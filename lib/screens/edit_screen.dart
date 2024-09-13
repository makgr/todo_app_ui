import 'package:flutter/material.dart';

class EditScreen extends StatelessWidget {
  const EditScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 236, 217, 166),
      appBar: AppBar(
        title: Text(
          "Edit Task",
          style: TextStyle(
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w700,
          ),
        ),
        backgroundColor: Color(0xfffab407),
      ),
      body: Form(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: "Title",
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                  hintText: "Details",
                ),
                maxLines: null,
                minLines: 3,
                expands: false,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 180,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Update"),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xfffab407),
                          foregroundColor: Colors.black),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: Container(
                      width: 180,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text("Cancel"),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                            foregroundColor: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
