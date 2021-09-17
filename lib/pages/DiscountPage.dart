import 'package:flutter/material.dart';

class DiscountPage extends StatefulWidget {


  @override
  State<StatefulWidget> createState() {
    return _DiscountPageState();
  }
}

class _DiscountPageState extends State<DiscountPage> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text("DiscountPage"),
      ),
    );
  }

  Widget cardUi(String id, String ownerId, String image, String description, String date,
      String price, String name, String category) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      // padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),

      child: InkWell(
        // onTap: () => Navigator.push(
        //   context,
        //   MaterialPageRoute(
        //       builder: (context) => detailsPage(
        //           id, image, description, date, name, price, category, ownerId, context)),
        // ),
        child: Container(
          padding: EdgeInsets.all(8),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  padding: EdgeInsets.only(
                    bottom: 32,
                  ),
                  // child: Neumorphic(
                  //   style: NeumorphicStyle(
                  //     intensity: 0,
                  //     boxShape: NeumorphicBoxShape.roundRect(
                  //         BorderRadius.circular(12)),
                  //   ),
                  //   child: Container(
                  //     height: double.infinity,
                  //     width: double.infinity,
                  //     child: Image.network(image, fit: BoxFit.fill),
                  //   ),
                  // ),
                ),
              ),
              Container(
                // padding: EdgeInsets.symmetric(
                //   horizontal: 16,
                // ),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 3,
                        child: Text(
                          name,
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          r"$" '$price',
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
