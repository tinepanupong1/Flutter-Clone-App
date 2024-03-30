import 'package:flutter/material.dart';

class MyTextField1 extends StatelessWidget {
  const MyTextField1({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
    required this.labelText,
    this.width = 446, 
    this.height = 50.0, 
  }) : super(key: key);

  final controller;
  final String hintText;
  final bool obscureText;
  final String labelText;
  final double width; 
  final double height; 

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: SizedBox(
        width: width, 
        height: height, 
        child: TextFormField(
          controller: controller,
          obscureText: obscureText,
          decoration: InputDecoration(
            labelText: labelText,
            hintText: hintText,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 20), 
            filled: true, 
            fillColor: Colors.grey,
            enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.zero, 
              borderSide: BorderSide(color: Colors.grey),
              gapPadding: 10,
            ),
            focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.zero, 
              borderSide: BorderSide(color: Colors.grey),
              gapPadding: 10,
            ),
            
            labelStyle: const TextStyle(
              color: Color.fromARGB(255, 0, 0, 0),
            ),
            hintStyle: const TextStyle(
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
        ),
      ),
    );
  }
}
