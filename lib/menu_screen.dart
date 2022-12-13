import 'package:coffe_pelayan/constant.dart';
import 'package:coffe_pelayan/outlet_screen.dart';
import 'package:flutter/material.dart';

class Menu2Widget extends StatefulWidget {
  const Menu2Widget({Key? key}) : super(key: key);

  @override
  _Menu2WidgetState createState() => _Menu2WidgetState();
}

class _Menu2WidgetState extends State<Menu2Widget> {
  int _count1 = 0;
  int _count2 = 0;
  int _count3 = 0;
  int _count4 = 0;
  int _count5 = 0;

  void _increamentCount1() {
    setState(() {
      _count1++;
    });
  }

  void _decreamentCount1() {
    setState(() {
      _count1--;
    });
  }

  void _increamentCount2() {
    setState(() {
      _count2++;
    });
  }

  void _decreamentCount2() {
    setState(() {
      _count2--;
    });
  }

  void _increamentCount3() {
    setState(() {
      _count3++;
    });
  }

  void _decreamentCount3() {
    setState(() {
      _count3--;
    });
  }

  void _increamentCount4() {
    setState(() {
      _count4++;
    });
  }

  void _decreamentCount4() {
    setState(() {
      _count4--;
    });
  }

  void _increamentCount5() {
    setState(() {
      _count5++;
    });
  }

  void _decreamentCount5() {
    setState(() {
      _count5--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: Image.asset(
                'assets/images/gradasi.png',
              ).image,
            ),
          ),
          child: Column(mainAxisSize: MainAxisSize.max, children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pop(OutletScreen());
                    },
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                    ),
                  ),
                  Icon(
                    Icons.search_sharp,
                    color: Colors.black,
                    size: 30,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'Menu',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 36,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                    child: Icon(
                      Icons.menu_book,
                      color: Colors.black,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 20),
                child: GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 20,
                    childAspectRatio: 0.65,
                  ),
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Menu',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Montserrat',
                                  fontSize: 18),
                            ),
                            Text(
                              'Harga',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 110,
                            ),
                            Container(
                              width: 220,
                              height: 35,
                              decoration: BoxDecoration(
                                  color: Colors.brown[700],
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    width: 0.1,
                                  )),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  TextButton(
                                      onPressed: _decreamentCount1,
                                      child: Icon(
                                        Icons.remove,
                                        color: Colors.white,
                                      )),
                                  Text('${_count1}',
                                      style: TextStyle(color: Colors.white)),
                                  TextButton(
                                      onPressed: _increamentCount1,
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.white,
                                      )),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xFFB07D60),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          width: 0.1,
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Menu',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Montserrat',
                                  fontSize: 18),
                            ),
                            Text(
                              'Harga',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 110,
                            ),
                            Container(
                              width: 220,
                              height: 35,
                              decoration: BoxDecoration(
                                  color: Colors.brown[700],
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    width: 0.1,
                                  )),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  TextButton(
                                      onPressed: _decreamentCount2,
                                      child: Icon(
                                        Icons.remove,
                                        color: Colors.white,
                                      )),
                                  Text('${_count2}',
                                      style: TextStyle(color: Colors.white)),
                                  TextButton(
                                      onPressed: _increamentCount2,
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.white,
                                      )),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xFFB07D60),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          width: 0.1,
                        ),
                      ),
                    ),

                    // Container(
                    //   child: Padding(
                    //     padding: const EdgeInsets.all(8.0),
                    //     child: Column(
                    //       crossAxisAlignment: CrossAxisAlignment.start,
                    //       children: [
                    //         Text(
                    //           'Menu',
                    //           style: TextStyle(
                    //               color: Colors.black,
                    //               fontFamily: 'Montserrat',
                    //               fontSize: 18),
                    //         ),
                    //         Text(
                    //           'Harga',
                    //           style: TextStyle(
                    //               fontSize: 15, fontWeight: FontWeight.w500),
                    //         ),
                    //         Padding(
                    //           padding: const EdgeInsets.only(top: 100),
                    //           child: Container(
                    //             width: 220,
                    //             height: 35,
                    //             decoration: BoxDecoration(
                    //                 color: Colors.brown[700],
                    //                 borderRadius: BorderRadius.circular(10),
                    //                 border: Border.all(
                    //                   width: 0.1,
                    //                 )),
                    //             child: Row(
                    //               mainAxisAlignment:
                    //                   MainAxisAlignment.spaceAround,
                    //               children: [
                    //                 TextButton(
                    //                     onPressed: _decreamentCount3,
                    //                     child: Icon(
                    //                       Icons.remove,
                    //                       color: Colors.white,
                    //                     )),
                    //                 Text('${_count3}',
                    //                     style: TextStyle(color: Colors.white)),
                    //                 TextButton(
                    //                     onPressed: _increamentCount3,
                    //                     child: Icon(
                    //                       Icons.add,
                    //                       color: Colors.white,
                    //                     )),
                    //               ],
                    //             ),
                    //           ),
                    //         )
                    //       ],
                    //     ),
                    //   ),
                    //   decoration: BoxDecoration(
                    //     color: Color(0xFFB07D60),
                    //     borderRadius: BorderRadius.circular(10),
                    //     border: Border.all(
                    //       width: 0.1,
                    //     ),
                    //   ),
                    // ),
                    // Container(
                    //   child: Padding(
                    //     padding: const EdgeInsets.all(8.0),
                    //     child: Column(
                    //       crossAxisAlignment: CrossAxisAlignment.start,
                    //       children: [
                    //         Text(
                    //           'Menu',
                    //           style: TextStyle(
                    //               color: Colors.black,
                    //               fontFamily: 'Montserrat',
                    //               fontSize: 18),
                    //         ),
                    //         Text(
                    //           'Harga',
                    //           style: TextStyle(
                    //               fontSize: 15, fontWeight: FontWeight.w500),
                    //         ),
                    //         Padding(
                    //           padding: const EdgeInsets.only(top: 100),
                    //           child: Container(
                    //             width: 220,
                    //             height: 35,
                    //             decoration: BoxDecoration(
                    //                 color: Colors.brown[700],
                    //                 borderRadius: BorderRadius.circular(10),
                    //                 border: Border.all(
                    //                   width: 0.1,
                    //                 )),
                    //             child: Row(
                    //               mainAxisAlignment:
                    //                   MainAxisAlignment.spaceAround,
                    //               children: [
                    //                 TextButton(
                    //                     onPressed: _decreamentCount4,
                    //                     child: Icon(
                    //                       Icons.remove,
                    //                       color: Colors.white,
                    //                     )),
                    //                 Text('${_count4}',
                    //                     style: TextStyle(color: Colors.white)),
                    //                 TextButton(
                    //                     onPressed: _increamentCount4,
                    //                     child: Icon(
                    //                       Icons.add,
                    //                       color: Colors.white,
                    //                     )),
                    //               ],
                    //             ),
                    //           ),
                    //         )
                    //       ],
                    //     ),
                    //   ),
                    //   decoration: BoxDecoration(
                    //     color: Color(0xFFB07D60),
                    //     borderRadius: BorderRadius.circular(10),
                    //     border: Border.all(
                    //       width: 0.1,
                    //     ),
                    //   ),
                    // ),
                    // Container(
                    //   child: Padding(
                    //     padding: const EdgeInsets.all(8.0),
                    //     child: Column(
                    //       crossAxisAlignment: CrossAxisAlignment.start,
                    //       children: [
                    //         Text(
                    //           'Menu',
                    //           style: TextStyle(
                    //               color: Colors.black,
                    //               fontFamily: 'Montserrat',
                    //               fontSize: 18),
                    //         ),
                    //         Text(
                    //           'Harga',
                    //           style: TextStyle(
                    //               fontSize: 15, fontWeight: FontWeight.w500),
                    //         ),
                    //         Padding(
                    //           padding: const EdgeInsets.only(top: 100),
                    //           child: Container(
                    //             width: 220,
                    //             height: 35,
                    //             decoration: BoxDecoration(
                    //                 color: Colors.brown[700],
                    //                 borderRadius: BorderRadius.circular(10),
                    //                 border: Border.all(
                    //                   width: 0.1,
                    //                 )),
                    //             child: Row(
                    //               mainAxisAlignment:
                    //                   MainAxisAlignment.spaceAround,
                    //               children: [
                    //                 TextButton(
                    //                     onPressed: _decreamentCount5,
                    //                     child: Icon(
                    //                       Icons.remove,
                    //                       color: Colors.white,
                    //                     )),
                    //                 Text('${_count5}',
                    //                     style: TextStyle(color: Colors.white)),
                    //                 TextButton(
                    //                     onPressed: _increamentCount5,
                    //                     child: Icon(
                    //                       Icons.add,
                    //                       color: Colors.white,
                    //                     )),
                    //               ],
                    //             ),
                    //           ),
                    //         )
                    //       ],
                    //     ),
                    //   ),
                    //   decoration: BoxDecoration(
                    //     color: Color(0xFFB07D60),
                    //     borderRadius: BorderRadius.circular(10),
                    //     border: Border.all(
                    //       width: 0.1,
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
    ));
  }
}
