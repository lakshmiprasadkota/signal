import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  SecondPage({this.name, this.color, this.date, this.nameIntial, this.msg});

  final String name;

  final Color color;
  final String date;
  final String nameIntial;
  final String msg;

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back_sharp),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          titleSpacing: 5,
          title: appBarContactImg(widget.name, widget.nameIntial),
          backgroundColor: widget.color,
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 25,
              ),
              Container(
                  margin: EdgeInsets.only(top: 100, bottom: 30),
                  padding: EdgeInsets.symmetric(horizontal: 140),
                  child: Transform.scale(
                    child: contactImg(widget.name, widget.nameIntial),
                    scale: 2,
                    alignment: Alignment.center,
                  )),
              SizedBox(
                height: 20,
              ),
              Text(
                widget.name,
                style: TextStyle(
                    color: Color(0xff161616),
                    fontSize: 23,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "+91 8099116745",
                style: TextStyle(color: Color(0xff666666)),
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.person_add_alt,
                    color: Color(0xff666666),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text("${widget.name} is on Signal",
                      style: TextStyle(color: Color(0xff666666)))
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Text("wed, jan ${widget.date}, 2021"),
              SizedBox(
                height: 20,
              ),
              Container(
                  margin: EdgeInsets.only(right: 15, left: 150),
                  padding: EdgeInsets.all(10),
                  alignment: Alignment.bottomRight,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.blueGrey[50],
                  ),
                  child: Column(
                    children: [
                      Text(
                        "welcome to  #signal",
                        style: TextStyle(
                            color: Color(0xff222222),
                            fontSize: 17,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          "jan ${widget.date}, 06:30",
                          style: TextStyle(
                              color: Color(0xff848484),
                              fontWeight: FontWeight.w500,
                              fontSize: 12),
                        ),
                      )
                    ],
                  )),
              SizedBox(
                height: 20,
              ),
              Container(
                  margin: EdgeInsets.only(left: 15, right: 150),
                  padding: EdgeInsets.all(10),
                  alignment: Alignment.bottomLeft,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: widget.color,
                  ),
                  child: Column(
                    children: [
                      Container(
                          alignment: Alignment.topLeft,
                          child: Text(
                            widget.msg,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontWeight: FontWeight.w500),
                            textDirection: TextDirection.ltr,
                          )),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          "jan ${widget.date}, 06:30",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 11),
                        ),
                      )
                    ],
                  )),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
            color: Color(0xf6f6f6),
            elevation: 0,
            child: Container(
              height: 100,
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 50,
                      margin: EdgeInsets.only(right: 8),
                      child: TextField(
                        decoration: InputDecoration(
                            filled: true,
                            isDense: true,
                            fillColor: Colors.blueGrey[50],
                            hintText: "Signal message",
                            prefixIcon: Icon(
                              Icons.chat_bubble_outline_outlined,
                              color: Color(0xff585858),
                              size: 25,
                            ),
                            suffix: Icon(
                              Icons.camera_alt_outlined,
                              color: Color(0xff585858),
                              size: 25,
                            ),
                            suffixIcon: Icon(
                              Icons.mic_none,
                              color: Color(0xff585858),
                              size: 25,
                            ),
                            hintStyle: TextStyle(color: Colors.black12),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(color: Colors.grey))),
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    child: FloatingActionButton(
                      onPressed: () {},
                      elevation: 0,
                      child: Icon(
                        Icons.add,
                        size: 30,
                      ),
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }

  Widget contactImg(
    String name,
    String img,
  ) {
    var nameIntial = name[0].toUpperCase();
    print(nameIntial);
    if (img != " ") {
      nameIntial = "";
    }
    return InkWell(
      child: ListTile(
        leading: CircleAvatar(
          radius: 40,
          backgroundColor: widget.color,
          backgroundImage: AssetImage(img),
          child: Text(
            nameIntial,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  Widget appBarContactImg(
    String name,
    String img,
  ) {
    var nameIntial = name[0].toUpperCase();
    print(nameIntial);
    if (img != " ") {
      nameIntial = "";
    }
    return InkWell(
      child: Row(
        children: [
          CircleAvatar(
            radius: 20,
            backgroundColor: Colors.white,
            backgroundImage: AssetImage(img),
            child: Text(
              nameIntial,
              style: TextStyle(
                color: widget.color,
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            width: 100,
            child: Text(
              "${widget.name}",
              style: TextStyle(fontSize: 16),
              softWrap: false,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Expanded(
              child: IconButton(
                  icon: Icon(
                    Icons.person_pin,
                    size: 20,
                    color: Colors.white,
                  ),
                  onPressed: null)),
          Expanded(
            child: IconButton(
              icon: Icon(
                Icons.video_call_rounded,
                size: 30,
              ),
              onPressed: () {},
            ),
          ),
          Expanded(
            child: IconButton(
              icon: Icon(
                Icons.phone,
              ),
              onPressed: () {},
            ),
          ),
          Expanded(
            child: IconButton(
              icon: Icon(
                Icons.more_vert,
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
