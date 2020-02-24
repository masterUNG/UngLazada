import 'package:flutter/material.dart';
import 'package:unglazada/utility/my_constant.dart';
import 'package:unglazada/widget/sign_in.dart';
import 'package:unglazada/widget/sign_up.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // Field
  List<String> banners = MyConstant().banners;

  // Method
  Widget elecGroup() {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 100.0,
        child: Column(
          children: <Widget>[
            Container(
              width: 80.0,
              height: 80.0,
              child: Image.asset('images/elect.png'),
            ),
            Text(
              'Electric',
              style: MyConstant().titleH3,
            )
          ],
        ),
      ),
    );
  }

  Widget carGroup() {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 100.0,
        child: Column(
          children: <Widget>[
            Container(
              width: 80.0,
              height: 80.0,
              child: Image.asset('images/car.png'),
            ),
            Text(
              'Car',
              style: MyConstant().titleH3,
            )
          ],
        ),
      ),
    );
  }

  Widget computerGroup() {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 100.0,
        child: Column(
          children: <Widget>[
            Container(
              width: 80.0,
              height: 80.0,
              child: Image.asset('images/computer.png'),
            ),
            Text(
              'Computer',
              style: MyConstant().titleH3,
            )
          ],
        ),
      ),
    );
  }

  Widget showTitle(String title) {
    return Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(
        title,
        style: MyConstant().titleH2,
      ),
    );
  }

  Widget showCategory() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        elecGroup(),
        carGroup(),
        computerGroup(),
      ],
    );
  }

  Widget showBanner() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.25,
      child: Image.asset(banners[0]),
    );
  }

  Widget signInButton() {
    return IconButton(
      tooltip: 'Sing In',
      icon: Icon(
        Icons.fingerprint,
        color: Colors.yellow,
      ),
      onPressed: () {
        Navigator.of(context).pop();
        routeTo(SingIn());
      },
    );
  }

  void routeTo(Widget object){
    MaterialPageRoute route = MaterialPageRoute(builder: (BuildContext buildContext){return object;});
    Navigator.of(context).push(route);
  }

  Widget signUpButton() {
    return IconButton(
      tooltip: 'Sign Up',
      icon: Icon(
        Icons.supervised_user_circle,
        color: Colors.blue,
      ),
      onPressed: () {
        Navigator.of(context).pop();
        routeTo(SignUp());
      },
    );
  }

  Widget showHead() {
    return UserAccountsDrawerHeader(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('images/wall.jpg'), fit: BoxFit.cover),
      ),
      accountName: Text(
        'Guest',
        style: MyConstant().titleH2,
      ),
      accountEmail: Text(
        'Non Login',
        style: MyConstant().titleH3,
      ),
      currentAccountPicture: Container(
        width: 50.0,
        height: 50.0,
        child: Image.asset('images/logo.png'),
      ),
      otherAccountsPictures: <Widget>[
        signInButton(),
        signUpButton(),
      ],
    );
  }

  Widget menuHome() {
    return ListTile(
      leading: Icon(Icons.home),
      title: Text('Home'),
      subtitle: Text('Description Home'),
      onTap: () {
        Navigator.of(context).pop();
      },
    );
  }

  Widget menuInfo() {
    return ListTile(
      leading: Icon(Icons.info),
      title: Text('Info'),
      subtitle: Text('Description Info'),
      onTap: () {
        Navigator.of(context).pop();
      },
    );
  }

  Widget menuSignOut() {
    return ListTile(
      leading: Icon(Icons.exit_to_app),
      title: Text('Sign Out'),
      subtitle: Text('Sign Out and Exit App'),
      onTap: () {
        Navigator.of(context).pop();
      },
    );
  }

  Widget showDrawer() {
    return Drawer(
      child: ListView(
        children: <Widget>[
          showHead(),
          menuHome(),
          menuInfo(),
          menuSignOut(),
        ],
      ),
    );
  }

  Widget listButton(){
    return IconButton(icon: Icon(Icons.list), onPressed: (){});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      drawer: showDrawer(),
      body: ListView(
        children: <Widget>[
          MyConstant().mySizebox,
          showBanner(),
          MyConstant().mySizebox,
          showTitle('Category'),
          MyConstant().mySizebox,
          showCategory(),
        ],
      ),
    );
  }
}
