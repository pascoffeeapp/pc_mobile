import 'package:coffe_pelayan/constant.dart';
import 'package:coffe_pelayan/menu_screen.dart';
import 'package:coffe_pelayan/table_screen.dart';
import 'package:coffe_pelayan/verification_screen.dart';
import 'package:flutter/material.dart';

class OutletScreen extends StatefulWidget {
  const OutletScreen({Key? key}) : super(key: key);

  @override
  _OutletScreenState createState() => _OutletScreenState();
}

class _OutletScreenState extends State<OutletScreen> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final List bulan = [
    "Outlet 1",
    "Outlet 2",
    "Outlet 3",
    "Outlet 4",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/Gradasi.png'),
                fit: BoxFit.cover),
          ),
          padding: EdgeInsets.all(5),
          child: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      child: InkWell(
                        onTap: () async {},
                        child: new IconButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    HomeWidget()));
                          },
                          icon: Icon(Icons.arrow_back_ios),
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                      child: Text(
                        'Outlet',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 36,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                      child: Icon(
                        Icons.shopping_cart_sharp,
                        color: Colors.black,
                        size: 30,
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: ListView.builder(
                    padding: EdgeInsets.all(15),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(new MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    new Menu2Widget()));
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: new Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                child: Container(
                                    width: 328,
                                    height: 150,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: Image.asset(
                                          'assets/images/makanan.jpg',
                                        ).image,
                                      ),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 105, 0, 0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: mTable),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            bulan[index],
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontFamily: 'Montserrat',
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                    ))),
                          ));
                    },
                    itemCount: bulan.length,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 40,
                    width: 150,
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
                                new VerificationWidget()));
                      },
                      child: Text('Verify'),
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
