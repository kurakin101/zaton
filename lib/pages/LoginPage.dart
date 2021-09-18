import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zaton/pages/ProfileSettingsPage.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage> {
  bool turn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5FFE8),
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color(0xffE5FFE8),
        title: Text("Вход",
            style: GoogleFonts.montserrat(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Color(0xff24C273))),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextFormField(
                decoration: new InputDecoration(
                  labelText: 'E-mail:',
                  fillColor: Colors.teal,
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 14,
                    color: Colors.black54,
                  ),
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 14,
                    color: Colors.black54,
                  ),
                ),
                // onChanged: (value) {
                //   setState(() {
                //     this._phone = value;
                //   });
                // }),
              ),
              TextFormField(
                decoration: new InputDecoration(
                  labelText: 'Пароль:',
                  fillColor: Colors.teal,
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 14,
                    color: Colors.black54,
                  ),
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 14,
                    color: Colors.black54,
                  ),
                ),
                // onChanged: (value) {
                //   setState(() {
                //     this._phone = value;
                //   });
                // }),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ProfileSettingsPage())),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff24C273),
                  onPrimary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 16, horizontal: 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Вход",
                        style: GoogleFonts.montserrat(
                            fontSize: 18,
                            fontWeight: FontWeight.w800,
                            color: Colors.white),
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
