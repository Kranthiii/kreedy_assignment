import 'dart:ui';

import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kreedy_assign/screens/ticket_booking_screen.dart';

class CustomExpansionListTile extends StatefulWidget {
  final String titleinput;
  final String downtext;
  final String icon;
  final bool isExpanded;
  const CustomExpansionListTile(
      {Key? key,
      required this.titleinput,
      required this.downtext,
      required this.icon,
      this.isExpanded = false})
      : super(key: key);

  @override
  State<CustomExpansionListTile> createState() =>
      _CustomExpansionListTileState();
}

class _CustomExpansionListTileState extends State<CustomExpansionListTile> {
  // ignore: prefer_final_fields
  List<dynamic> _data = [
    {
      "timings": "4:00-5:00AM",
      "1": true,
      "2": false,
      "3": true,
      "4": false,
      "5": false,
      "6": true,
      "7": false
    },
    {
      "timings": "6:00- 7:00AM",
      "1": true,
      "2": true,
      "3": false,
      "4": true,
      "5": true,
      "6": false,
      "7": false
    },
    {
      "timings": "7:00- 8:00AM",
      "1": true,
      "2": false,
      "3": true,
      "4": false,
      "5": true,
      "6": false,
      "7": true
    },
    {
      "timings": "3:00- 4:00AM",
      "1": true,
      "2": false,
      "3": false,
      "4": true,
      "5": false,
      "6": true,
      "7": false
    },
    {"timings": "", "1": const Text("Mon")}
  ];

  final GlobalKey<ExpansionTileCardState> cardA = GlobalKey();

  final GlobalKey<ExpansionTileCardState> cardB = GlobalKey();
  @override
  Widget build(BuildContext context) {
    final ButtonStyle flatButtonStyle = TextButton.styleFrom(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
      ),
    );
    return ExpansionTile(
      initiallyExpanded: widget.isExpanded,
      key: cardA,
      trailing: const Icon(
        Icons.keyboard_arrow_down_rounded,
        color: Color.fromARGB(132, 255, 255, 255),
        size: 25,
      ),
      leading: Image.asset(
        "assets/football.png",
        height: 30,
        width: 30,
        color: const Color.fromARGB(132, 255, 255, 255),
      ),
      title: Text(
        widget.titleinput,
        style: const TextStyle(
            color: Color.fromARGB(132, 255, 255, 255),
            fontWeight: FontWeight.w500,
            fontSize: 18),
      ),
      children: <Widget>[
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: DataTable(
            dividerThickness: 0.0,
            showBottomBorder: false,
            showCheckboxColumn: false,
            columnSpacing: 10.0,
            columns: [
              const DataColumn(
                label: Text(
                  "3:00-4:00 AM",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              // DataColumn(label: label)
              DataColumn(label: datacolumn(true)),
              DataColumn(label: datacolumn(true)),
              DataColumn(label: datacolumn(true)),
              DataColumn(label: datacolumn(true)),
              DataColumn(label: datacolumn(true)),
              DataColumn(label: datacolumn(false)),
              DataColumn(label: datacolumn(true)),
            ],
            rows: _data
                .asMap()
                .map((index, data) => MapEntry(
                      index,
                      DataRow(
                        cells: [
                          DataCell(
                            Text(
                              data["timings"],
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          index == 4
                              ? const DataCell(Text(
                                  "Mon",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ))
                              : DataCell(datacolumn(data["1"])),
                          index == 4
                              ? const DataCell(Text(
                                  "Tue",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ))
                              : DataCell(datacolumn(data["2"])),
                          index == 4
                              ? const DataCell(Text(
                                  "Wed",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ))
                              : DataCell(datacolumn(data["3"])),
                          index == 4
                              ? const DataCell(Text(
                                  "Thu",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ))
                              : DataCell(datacolumn(data["4"])),
                          index == 4
                              ? const DataCell(Text(
                                  "Fri",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ))
                              : DataCell(datacolumn(data["5"])),
                          index == 4
                              ? const DataCell(Text(
                                  "Sat",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ))
                              : DataCell(datacolumn(data["6"])),
                          index == 4
                              ? const DataCell(Text(
                                  "Sun",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ))
                              : DataCell(datacolumn(data["7"])),
                        ],
                      ),
                    ))
                .values
                .toList(),
          ),
        ),
      ],
    );
  }

  Widget datacolumn(bool abcd) {
    return InkWell(
      onTap: () {
        Get.to(() => const Ticketbookingscreen());
      },
      child: Container(
        height: 25,
        width: 25,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: abcd == true
              ? const Color.fromARGB(255, 74, 74, 73)
              : const Color.fromARGB(255, 195, 116, 12),
        ),
      ),
    );
  }
}
