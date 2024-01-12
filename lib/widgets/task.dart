import 'package:flutter/material.dart';

class Task extends StatelessWidget {
  final String title;
  final String desc;
  final Icon icon; // Changed from Icon to IconData
  final Icon ficons; // Changed from Icon to IconData

  const Task({
    Key? key,
    required this.title,
    required this.desc,
    required this.icon,
    required this.ficons,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: screenHeight * 0.12,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey.shade50,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          icon,
                          SizedBox(
                            width: 30,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                title,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 19,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                desc,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      ficons,
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
