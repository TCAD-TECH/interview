import 'package:flutter/material.dart';

class EmpTile extends StatelessWidget {
  String id, name, exp;
  bool working;
  EmpTile(this.id, this.name, this.working, this.exp) : super();

  // EmpTile(,{Key key})
  //     : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        width: 360,
        height: 80,
        child: Column(
          children: [
            Container(
              width: 360,
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(162, 17, 67, 116),
                    blurRadius: 8,
                    offset: Offset(6, 6),
                  ),
                  BoxShadow(
                    color: Color.fromARGB(127, 15, 34, 58),
                    blurRadius: 8,
                    offset: Offset(-6, -6),
                  ),
                  BoxShadow(
                    color: Color.fromARGB(61, 2, 13, 24),
                    blurRadius: 8,
                    offset: Offset(6, -6),
                  ),
                  BoxShadow(
                    color: Color(0x330d0f11),
                    blurRadius: 8,
                    offset: Offset(-6, 6),
                  ),
                ],
                color: Color.fromARGB(186, 3, 48, 102),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10, right: 10, top: 10),
                    child: Container(
                      height: 60,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Container(
                              width: 185,
                              height: 60,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          width: 8,
                                          height: 8,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: working
                                                ? Colors.green
                                                : Color(0xfff03738),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Text(
                                    "name: $name",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 210,
                                    child: Text(
                                      "no. of Years $exp",
                                      style: TextStyle(
                                        color: Color(0xffc2c9d1),
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
