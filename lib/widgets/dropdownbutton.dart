import 'package:flutter/material.dart';

class CustomDropDownButton extends StatefulWidget {
  final String title;
  const CustomDropDownButton({super.key, required this.title});

  @override
  State<CustomDropDownButton> createState() => _CustomDropDownButtonState();
}

class _CustomDropDownButtonState extends State<CustomDropDownButton> {
  final List<String> items = [
    'Item1',
    'Item2',
    'Item3',
    'Item4',
    'Item5',
    'Item6',
    'Item7',
    'Item8',
  ];
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: DropdownButton(
          icon: const Icon(
            Icons.keyboard_arrow_down_rounded,
            color: Colors.white,
          ),
          dropdownColor: const Color.fromRGBO(158, 112, 93, 30),
          hint: Text(
            widget.title,
            style: const TextStyle(color: Colors.white),
          ),
          items: items
              .map((item) => DropdownMenuItem<String>(
                    value: item,
                    child: Text(
                      item,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ))
              .toList(),
          value: selectedValue,
          onChanged: (value) {
            setState(() {
              selectedValue = value as String;
            });
          },
        ),
      ),
    );
  }
}
