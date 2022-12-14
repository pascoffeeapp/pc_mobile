import 'package:coffe_pelayan/constant.dart';
import 'package:coffe_pelayan/order_screen.dart';
import 'package:coffe_pelayan/outlet_screen.dart';
import 'package:coffe_pelayan/table_screen.dart';
import 'package:flutter/material.dart';

class VerificationWidget extends StatefulWidget {
  const VerificationWidget({Key? key}) : super(key: key);

  @override
  _VerificationWidgetState createState() => _VerificationWidgetState();
}

class _VerificationWidgetState extends State<VerificationWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
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
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  OutletScreen()));
                        },
                        icon: Icon(Icons.arrow_back_ios),
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Verivication',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 36,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
                  child: Card(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    color: mTable,
                    elevation: 20,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Container(
                        width: 300,
                        height: 350,
                        decoration: BoxDecoration(
                          color: Color(0xC4C79E82),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 0,
                          ),
                        ),
                        child: SingleChildScrollView(
                          child:
                              Column(mainAxisSize: MainAxisSize.max, children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10, 10, 10, 10),
                              child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Dish 1\nRp. 10.000',
                                        style: TextStyle()),
                                    Container(
                                      width: 128,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        color: mTable,
                                        borderRadius: BorderRadius.circular(25),
                                        shape: BoxShape.rectangle,
                                        border: Border.all(
                                          color: Color(0xFF9E9E9E),
                                          width: 1,
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          TextButton(
                                              onPressed: _decreamentCount1,
                                              child: Icon(
                                                Icons.remove,
                                                color: Colors.white,
                                                size: 20,
                                              )),
                                          Text('$_count1'),
                                          TextButton(
                                              onPressed: _increamentCount1,
                                              child: Icon(
                                                Icons.add,
                                                color: Colors.white,
                                                size: 20,
                                              )),
                                        ],
                                      ),
                                    ),
                                  ]),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10, 10, 10, 10),
                              child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Dish 1\nRp. 10.000',
                                        style: TextStyle()),
                                    Container(
                                      width: 128,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        color: mTable,
                                        borderRadius: BorderRadius.circular(25),
                                        shape: BoxShape.rectangle,
                                        border: Border.all(
                                          color: Color(0xFF9E9E9E),
                                          width: 1,
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          TextButton(
                                              onPressed: _decreamentCount2,
                                              child: Icon(
                                                Icons.remove,
                                                color: Colors.white,
                                                size: 20,
                                              )),
                                          Text('$_count2'),
                                          TextButton(
                                              onPressed: _increamentCount2,
                                              child: Icon(
                                                Icons.add,
                                                color: Colors.white,
                                                size: 20,
                                              )),
                                        ],
                                      ),
                                    ),
                                  ]),
                            ),
                          ]),
                        )),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Container(
                    width: 250,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Color(0xFFB16E31),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: EdgeInsets.only(top: 8.5),
                    child: Text(
                      'Total Amount : Rp. 5.000.000',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    height: 40,
                    width: 250,
                    child: ElevatedButton(
                      style: TextButton.styleFrom(
                        backgroundColor: mSigninButton,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(new MaterialPageRoute(
                            builder: (BuildContext context) =>
                                new HomeWidget()));
                      },
                      child: Text('Process to checkout'),
                    ),
                  ),
                )
              ]),
            ),
          ),
        ));
  }
}
