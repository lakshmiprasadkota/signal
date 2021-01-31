import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:random_color/random_color.dart';
import 'package:signal/screens/second_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: Colors.white,
        leadingWidth: 40,
        centerTitle: true,
        title: Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.pink,
              backgroundImage: AssetImage("img/pk.jpg"),
              radius: 18,
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              "Signal",
              style: TextStyle(
                  color: Color(0xff1b1b1b),
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        actions: [
          Icon(
            Icons.search,
            color: Color(0xff545454),
            size: 30,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.more_vert,
            color: Color(0xff545454),
            size: 30,
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.separated(
                physics: ScrollPhysics(),
                itemCount: contactListItems.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return InkWell(
                      child: ContactArrange(ca: contactListItems[index]));
                },
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: 3,
                  );
                }),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: null,
            onPressed: () {},
            child: Icon(
              Icons.camera_alt,
              color: Colors.black,
            ),
            backgroundColor: Colors.white,
          ),
          SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            heroTag: null,
            onPressed: () {},
            child: Icon(Icons.add),
            backgroundColor: Colors.blue,
          ),
        ],
      ),
    );
  }
}

class ContactArrange extends StatefulWidget {
  ContactArrange({
    this.ca,
  });

  ContactLists ca;

  @override
  _ContactArrangeState createState() => _ContactArrangeState();
}

class _ContactArrangeState extends State<ContactArrange> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: InkWell(
      child: ListTile(
        leading: contactListImage(widget.ca.img),
        title: Text(
          widget.ca.name,
          style: TextStyle(
              color: Color(0xff1b1b1b),
              fontSize: 16,
              fontWeight: FontWeight.w600),
        ),
        subtitle: Text(
          widget.ca.msg,
          style: TextStyle(color: Color(0xff626262), fontSize: 14),
        ),
        trailing: Text(
          "jan ${widget.ca.date}",
          style: TextStyle(
              color: Color(0xff676767),
              fontSize: 12,
              fontWeight: FontWeight.w500),
        ),
      ),
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => SecondPage(
                    date: widget.ca.date,
                    color: widget.ca.clr,
                    name: widget.ca.name,
                    msg: widget.ca.msg,
                    nameIntial: widget.ca.img)));
      },
      highlightColor: widget.ca.clr,
    ));
  }

  Widget contactListImage(
    String img,
  ) {
    var nameIntial = widget.ca.name[0].toUpperCase();
    print(nameIntial);
    if (img != " ") {
      nameIntial = "";
    }
    print("-------------------->");
    print(nameIntial);
    return CircleAvatar(
      radius: 30,
      backgroundColor: widget.ca.clr,
      backgroundImage: AssetImage(img),
      child: Text(
        nameIntial,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }

  Widget contactLists(String img, String sub, String name, String date) {
    var nameIntial = name[0].toUpperCase();
    print(nameIntial);
    if (img != " ") {
      nameIntial = "";
    }
    print("-------------------->");
    print(nameIntial);
    return InkWell(
      child: ListTile(
        leading: CircleAvatar(
          radius: 30,
          backgroundColor: widget.ca.clr,
          backgroundImage: AssetImage(img),
          child: Text(
            nameIntial,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        title: Text(
          name,
          style: TextStyle(
              color: Color(0xff1b1b1b),
              fontSize: 16,
              fontWeight: FontWeight.w600),
        ),
        subtitle: Text(
          sub,
          style: TextStyle(color: Color(0xff626262), fontSize: 14),
        ),
        trailing: Text(
          "jan ${date}",
          style: TextStyle(
              color: Color(0xff676767),
              fontSize: 12,
              fontWeight: FontWeight.w500),
        ),
      ),
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => SecondPage(
                    date: widget.ca.date,
                    color: widget.ca.clr,
                    name: widget.ca.name,
                    msg: widget.ca.msg,
                    nameIntial: widget.ca.img)));
      },
      highlightColor: widget.ca.clr,
    );
  }
}

class ContactLists {
  ContactLists({this.img, this.msg, this.name, this.date, this.clr});

  String name;

  String msg;
  String img;
  String date;
  Color clr;
}

RandomColor rc = RandomColor();
Color clrs = rc.randomColor(colorBrightness: ColorBrightness.light);
Color clrsTwo = rc.randomColor(colorBrightness: ColorBrightness.light);
Color clrsThree = rc.randomColor(colorBrightness: ColorBrightness.light);

var contactListItems = [
  ContactLists(
      name: "lakshmi prasad",
      msg: "hai , prasad how r u ?",
      img: "img/selfi1.jpeg",
      date: "21",
      clr: clrs),
  ContactLists(
      name: "lakshmi ",
      msg: "waiting here",
      img: " ",
      date: "21",
      clr: clrsTwo),
  ContactLists(
      name: "mahesh babu",
      msg: "call me man ",
      img: "img/mb.jpg",
      date: "21",
      clr: clrsThree),
  ContactLists(
      name: "Allu Arjun ",
      msg: "Dance pratices ki ra ra ",
      img: " ",
      date: "21",
      clr: clrs),
  ContactLists(
      name: "Ram Charan",
      msg: "hello",
      img: "img/rc.jpg",
      date: "20",
      clr: Colors.primaries[Random().nextInt(Colors.primaries.length)]),
  ContactLists(
      name: "Modi JI",
      msg: "Jhai Shree Ram, how r u?",
      img: " ",
      date: "19",
      clr: Colors.primaries[Random().nextInt(Colors.primaries.length)]),
  ContactLists(
      name: "lakshmi prasad",
      msg: "hai , prasad how r u ?",
      img: "img/selfi1.jpeg",
      date: "18",
      clr: Colors.primaries[Random().nextInt(Colors.primaries.length)]),
  ContactLists(
      name: "lakshmi ",
      msg: "waiting here",
      img: " ",
      date: "17",
      clr: Colors.primaries[Random().nextInt(Colors.primaries.length)]),
  ContactLists(
      name: "mahesh babu",
      msg: "call me man ",
      img: "img/mb.jpg",
      date: "17",
      clr: Colors.primaries[Random().nextInt(Colors.primaries.length)]),
  ContactLists(
      name: "Allu Arjun ",
      msg: "Dance pratices ki ra ra ",
      img: " ",
      date: "16",
      clr: Colors.primaries[Random().nextInt(Colors.primaries.length)]),
  ContactLists(
      name: "Ram Charan",
      msg: "hello",
      img: "img/rc.jpg",
      date: "15",
      clr: Colors.primaries[Random().nextInt(Colors.primaries.length)]),
  ContactLists(
      name: "Modi JI",
      msg: "Jhai Shree Ram, how r u?",
      img: " ",
      date: "13",
      clr: Colors.primaries[Random().nextInt(Colors.primaries.length)]),
];
