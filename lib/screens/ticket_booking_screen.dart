import 'package:flutter/material.dart';

class Ticketbookingscreen extends StatelessWidget {
  const Ticketbookingscreen({super.key});

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
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Column(
            children: [
              ListTile(
                visualDensity: VisualDensity(horizontal: -4.0),
                minLeadingWidth: 0.0,
                leading: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios_new_outlined,
                      color: Colors.white,
                    )),
              ),
              ListTile(
                title: const Text(
                  "28 Feb ( Sunday )",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
                trailing: Container(
                  decoration: BoxDecoration(
                      gradient: const LinearGradient(colors: [
                        Colors.red,
                        Colors.redAccent,
                        Colors.orange,
                      ]),
                      borderRadius: BorderRadius.circular(10.0)),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "3:00-4:00 PM",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                _build("Booked By:", " John Doe"),
                _build("Date:", " 28 Feb 2023"),
                _build("Time:", " 3:00 - 4:00 PM"),
                _build("Sports:", " Cricket"),
                _build("Amount:", " 700 Rs"),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: screenWidth / 20,
            ),
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.red,
              ),
              onPressed: () async {},
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: screenHeight / 100),
                child: const Center(
                  child: Text(
                    "Cancel Booking",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "BentonSans",
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 150,
          )
        ]),
      ),
    );
  }

  Widget _build(String fieldname, String fieldvalue) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 8.0),
      child: Row(
        children: [
          Text(
            fieldname,
            style: const TextStyle(
                color: Colors.grey, fontSize: 16, fontWeight: FontWeight.w600),
          ),
          Text(
            fieldvalue,
            style: const TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
