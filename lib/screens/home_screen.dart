import 'package:flutter/material.dart';
import 'package:kreedy_assign/widgets/Custom_expansion_card.dart';
import 'package:kreedy_assign/widgets/dropdownbutton.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> items = [
    'Sports',
    'Sports1',
    'Sports2',
    'Sports3',
    'Sports4',
    'Sports5',
    'Sports6',
    'Sports7',
  ];
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Colors.grey.shade400,
              Colors.grey.shade500,
              Colors.grey.shade600,
              Colors.grey.shade700,
              Colors.grey.shade800,
            ],
          ),
        ),
        child: ListView(
          children: [
            SizedBox(
              height: screenHeight / 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 40,
                    // width: 150,
                    color: Colors.grey.shade400,
                    child: const CustomDropDownButton(title: "Select Date"),
                  ),
                  Container(
                    height: 40,
                    // width: 150,
                    color: Colors.grey.shade400,
                    child: const CustomDropDownButton(title: "Select Sport"),
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    color: Colors.grey.shade400,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: const Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: screenHeight / 20,
            ),
            ListTile(
              title: const Text(
                "Today Bookings",
                style: TextStyle(
                    color: Color.fromARGB(132, 255, 255, 255),
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
              trailing: DropdownButton(
                icon: const Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: Colors.white,
                ),
                dropdownColor: Colors.black,
                items: items
                    .map((item) => DropdownMenuItem<String>(
                          value: item,
                          child: Text(
                            item,
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(132, 255, 255, 255),
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
            SizedBox(
              height: screenHeight / 20,
            ),
            const CustomExpansionListTile(
                titleinput: "Cricket", downtext: "", icon: ""),
            SizedBox(
              height: screenHeight / 80,
            ),
            const CustomExpansionListTile(
                titleinput: "FootBall", downtext: "", icon: ""),
            SizedBox(
              height: screenHeight / 80,
            ),
            const CustomExpansionListTile(
                titleinput: "Badmition", downtext: "", icon: ""),
            SizedBox(
              height: screenHeight / 80,
            ),
            const CustomExpansionListTile(
                titleinput: "Tennis", downtext: "", icon: ""),
            SizedBox(
              height: screenHeight / 80,
            ),
            const CustomExpansionListTile(
                titleinput: "Swimming", downtext: "", icon: ""),
            SizedBox(
              height: screenHeight / 80,
            ),
            const CustomExpansionListTile(
                titleinput: "BasketBall", downtext: "", icon: ""),
            SizedBox(
              height: screenHeight / 80,
            ),
          ],
        ),
      ),
    );
  }
}
