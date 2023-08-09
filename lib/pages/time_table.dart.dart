import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TableExampleScreen extends StatelessWidget {
  const TableExampleScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16.0), 
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Today's Lectures",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: const TableExample(),
      ),
    );
  }
}
class TableExample extends StatelessWidget {
  const TableExample({Key? key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: Table(
        defaultColumnWidth: const IntrinsicColumnWidth(),
        children: [
          TableRow(
            children: [
              TableCell(
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 121, 186, 243),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    width: 70.0,
                    height: 20.0,
                    child: const Center(child: Padding(
                      padding: EdgeInsets.all(1.0),
                      child: Text('Time',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),
                    ) ),
                  ),
                ),
              ),
              TableCell(
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 121, 186, 243),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    width: 150.0,
                    height: 20.0,
                    child: const Center(child: Padding(
                      padding: EdgeInsets.all(1.0),
                      child: Text('Module & Lecture Name',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),
                    )),
                  ),
                ),
              ),
              TableCell(
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color:Color.fromARGB(255, 121, 186, 243) ,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    width: 80.0,
                    height: 20.0,
                    child: const Center(child: Padding(
                      padding: EdgeInsets.all(1.0),
                      child: Text('Lecture Hall',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w900)),
                    )),
                  ),
                ),
              ),
              TableCell(
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color:Color.fromARGB(255, 121, 186, 243),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    width: 40.0,
                    height: 20.0,
                    child: const Center(child: Padding(
                      padding: EdgeInsets.all(1.0),
                      child: Text('More',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w900)),
                    )),
                  ),
                ),
              ),
            ],
          ),
          TableRow(
            children: [
              TableCell(
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 208, 206, 235),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    width: 80.0,
                    height: 60.0,
                    child: const Center(child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('09.00pm-12.00pm',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700)),
                    )),
                  ),
                ),
              ),
              TableCell(
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 208, 206, 235),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    width: 120.0,
                    height: 90.0,
                    child: const Center(child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('SE303.3                        Mobile Application Development   Mr.Dilan Perera',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700)),
                    )),
                  ),
                ),
              ),
              TableCell(
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 208, 206, 235),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    width: 60.0,
                    height: 50.0,
                    child: const Center(child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('C2 L-009',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700)),
                    )),
                  ),
                ),
              ),
              TableCell(
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(8.0),
                      border: Border.all(color: Colors.black, width: 2.0),
                    ),
                    width: 70.0,
                    height: 40.0,
                    child: Center(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(color: Colors.white, width: 2.0),
                        ),
                        child: ElevatedButton(
                          onPressed: () {
                            
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6.0),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: const Text('More',style: TextStyle(fontSize: 12)),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          TableRow(
            children: [
              TableCell(
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 208, 206, 235),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    width: 80.0,
                    height: 60.0,
                    child: const Center(child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('01.00pm-03.00pm',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700)),
                    )),
                  ),
                ),
              ),
              TableCell(
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 208, 206, 235),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    width: 150.0,
                    height: 90.0,
                    child: const Center(child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('304.3              Software Quality Assurance Ms.Pavithra Subashini',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700)),
                    )),
                  ),
                ),
              ),
              TableCell(
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 208, 206, 235),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    width: 60.0,
                    height: 50.0,
                    child: const Center(child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('C2 L-102',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700)),
                    )),
                  ),
                ),
              ),
              TableCell(
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(8.0),
                      border: Border.all(color: Colors.black, width: 2.0),
                    ),
                    width: 50.0,
                    height: 40.0,
                    child: Center(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(color: Colors.white, width: 2.0),
                        ),
                        child: ElevatedButton(
                          onPressed: () {
                            
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6.0),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: const Text('More',style: TextStyle(fontSize: 12)),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          TableRow(
            children: [
              TableCell(
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 208, 206, 235),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    width: 80.0,
                    height: 60.0,
                    child: const Center(child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('03.30pm-05.00pm',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700)),
                    )),
                  ),
                ),
              ),
              TableCell(
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 208, 206, 235),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    width: 80.0,
                    height: 120.0,
                    child: const Center(child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('304.3              Software Quality Assurance(Tutorial) Pavithra Dissanayake',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700)),
                    )),
                  ),
                ),
              ),
              TableCell(
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 208, 206, 235),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    width: 60.0,
                    height: 50.0,
                    child: const Center(child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('C2 L-102',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700)),
                    )),
                  ),
                ),
              ),
              TableCell(
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(8.0),
                      border: Border.all(color: Colors.black, width: 2.0),
                    ),
                    width: 40.0,
                    height: 40.0,
                    child: Center(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(color: Colors.white, width: 2.0),
                        ),
                        child: ElevatedButton(
                          onPressed: () {
                            
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6.0),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: const Text('More',style: TextStyle(fontSize: 12)),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          
        ],
      ),
    );
  }
}

