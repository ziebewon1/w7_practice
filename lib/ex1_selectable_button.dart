// EX 1 – The selectable button (handout page: EX 1). Start code from the handout.

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Custom buttons"),
        ),
        body: Center(
          child: SizedBox(
                width: 400,
                child: Column(
                  children: [
                    SelectedButton(),
                    SizedBox(
                      height: 5,
                    ),
                    SelectedButton(),
                    SizedBox(
                      height: 5,
                    ),
                    SelectedButton(),
                    SizedBox(
                      height: 5,
                    ),
                    SelectedButton(),
                  ],
                )
              ),
        ),
      ),
    ));

class SelectedButton extends StatefulWidget {
  const SelectedButton({
    super.key,
  });

  @override
  State<SelectedButton> createState() => _SelectedButtonState();
}

class _SelectedButtonState extends State<SelectedButton> {
  bool isSelected = false;
  
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () => {
          setState(() {
            isSelected = !isSelected;
          })
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: isSelected ? Colors.blue[500] : Colors.blue[50],
        ),
        child: Center(
          child: Text(isSelected ? 'Selected' : 'Not Selected', 
          style: TextStyle(color: isSelected ? Colors.white : Colors.black) ,)
        ));
  }
}

