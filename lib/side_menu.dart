import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  final double menuWidth;

  const SideMenu({Key key, this.menuWidth}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: menuWidth,
        child: Container(
          color: Colors.grey[900],
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ListTile(
                title: Align(
                  alignment: Alignment.center,
                  child: Text("LED Menu",
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)
                  ),
                ),
              ),
              /// LED Menu
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Container(
                  height: 2.0,
                  width: menuWidth,
                  color: Colors.white,
                ),
              ),
              /// Line
              ListTile(
                leading: Icon(
                  Icons.group_add,
                  color: Colors.white,
                ),
                title: Text("단체응원", style: TextStyle(color: Colors.white)
                ),
              ),
              /// Group Cheer
              ListTile(
                leading: Icon(
                  Icons.group,
                  color: Colors.white,
                ),
                title: Text("개인응원", style: TextStyle(color: Colors.white)
                ),
              ),
              /// Solo Cheer
              ListTile(
                leading: Icon(
                  Icons.bug_report,
                  color: Colors.white,
                ),
                title: Text("테스트", style: TextStyle(color: Colors.white)
                ),
              ),
              /// TestMode
              ListTile(
                leading: Icon(
                  Icons.color_lens,
                  color: Colors.white,
                ),
                title: Text("색상", style: TextStyle(color: Colors.white)
                ),
              ),
              /// ColorMode
              Expanded(
                child: Container(),
              ),
              /// 공백
              ListTile(
                leading: Icon(
                  Icons.exit_to_app,
                  color: Colors.white,
                ),
                title: Text("나가기", style: TextStyle(color: Colors.white)
                ),
              ),
              /// Log Out
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Container(
                  height: 2.0,
                  width: menuWidth,
                  color: Colors.white,
                ),
              ),
              /// Line
              ListTile(
                title: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text("개인정보 처리방침", textAlign: TextAlign.center, style: TextStyle(fontSize: 10, color: Colors.grey[200])
                  ),
                ),
              ),
              /// 개인정보 처리방침
            ],
          ),
        ),
      ),
    );
  }
}
