import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 236, 217, 166),
      appBar: AppBar(
        title: Text(
          "Add Task",
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
              Container(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Add"),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xfffab407),
                      foregroundColor: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
