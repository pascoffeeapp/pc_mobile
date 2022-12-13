import 'package:coffe_pelayan/constant.dart';
import 'package:coffe_pelayan/login_screen.dart';
import 'package:coffe_pelayan/order_screen.dart';
import 'package:coffe_pelayan/outlet_screen.dart';
import 'package:flutter/material.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final List bulan = [
    "Table 1",
    'Table 2',
    'Table 3',
    'Table 4',
    'Table 5',
    'Table 6',
    'Table 7',
    'Table 8',
    'Table 9',
    'Table 10',
    "Table 1",
    'Table 2',
    'Table 3',
    'Table 4',
    'Table 5',
    'Table 6',
    'Table 7',
    'Table 8',
    'Table 9',
    'Table 10'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/Gradasi.png'),
                  fit: BoxFit.cover),
            ),
            child: GestureDetector(
                onTap: () => FocusScope.of(context).unfocus(),
                child: Column(mainAxisSize: MainAxisSize.max, children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                        child: IconButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    OrderStatusWidget()));
                          },
                          icon: Icon(Icons.table_rows_outlined),
                          color: Colors.black,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                        child: IconButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (_) => AlertDialog(
                                title: Text('Logout'),
                                content: Text('Are you sure you want to exit?'),
                                actions: <Widget>[
                                  new TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop(
                                          HomeWidget(),
                                        );
                                      },
                                      child: Text(
                                        'Cancel',
                                        style: TextStyle(color: Colors.black),
                                      )),
                                  new TextButton(
                                      onPressed: () {
                                        Navigator.of(context)
                                            .pushAndRemoveUntil(
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        LoginScreen()),
                                                (route) => route.isFirst);
                                      },
                                      child: Text(
                                        'yes',
                                        style: TextStyle(color: Colors.black),
                                      ))
                                ],
                              ),
                            );
                          },
                          icon: Icon(Icons.logout),
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                    child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                            child: Text(
                              'Table',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 36,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                        ]),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          childAspectRatio: 1,
                        ),
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: (() {
                              Navigator.of(context).push(new MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      new OutletScreen()));
                            }),
                            child: new Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              color: mTable,
                              child: GridTile(
                                child: Container(
                                  child: Align(
                                    alignment: AlignmentDirectional(-0.5, 0.85),
                                    child: Text(
                                      bulan[index],
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                        itemCount: bulan.length,
                      ),
                    ),
                  ),
                ]))));
  }
}
