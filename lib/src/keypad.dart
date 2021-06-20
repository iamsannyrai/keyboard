import 'package:flutter/material.dart';

class Keypad extends StatelessWidget {
  Keypad({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> secondRowKeys = [
    {'val': '1', 'sym': '!'},
    {'val': '2', 'sym': '@'},
    {'val': '3', 'sym': '#'},
    {'val': '4', 'sym': '\$'},
    {'val': '5', 'sym': '%'},
    {'val': '6', 'sym': '^'},
    {'val': '7', 'sym': '&'},
    {'val': '8', 'sym': '*'},
    {'val': '9', 'sym': '('},
    {'val': '0', 'sym': ')'},
    {'val': '-', 'sym': '_'},
    {'val': '=', 'sym': '+'},
  ];

  final List<Map<String, dynamic>> thirdRowKeys = [
    {'val': 'Q', 'sym': ''},
    {'val': 'W', 'sym': ''},
    {'val': 'E', 'sym': ''},
    {'val': 'R', 'sym': ''},
    {'val': 'T', 'sym': ''},
    {'val': 'Y', 'sym': ''},
    {'val': 'U', 'sym': ''},
    {'val': 'I', 'sym': ''},
    {'val': 'O', 'sym': ''},
    {'val': 'P', 'sym': ''},
    {'val': '[', 'sym': '{'},
    {'val': ']', 'sym': '}'},
    {'val': '\\', 'sym': '|'},
  ];

  final List<Map<String, dynamic>> fourthRowKeys = [
    {'val': 'A', 'sym': ''},
    {'val': 'S', 'sym': ''},
    {'val': 'D', 'sym': ''},
    {'val': 'F', 'sym': ''},
    {'val': 'G', 'sym': ''},
    {'val': 'H', 'sym': ''},
    {'val': 'J', 'sym': ''},
    {'val': 'K', 'sym': ''},
    {'val': 'L', 'sym': ''},
    {'val': ';', 'sym': ':'},
    {'val': '\'', 'sym': '"'},
  ];

  final List<Map<String, dynamic>> fifthRowKeys = [
    {'val': 'Z', 'sym': ''},
    {'val': 'X', 'sym': ''},
    {'val': 'C', 'sym': ''},
    {'val': 'V', 'sym': ''},
    {'val': 'B', 'sym': ''},
    {'val': 'N', 'sym': ''},
    {'val': 'M', 'sym': ''},
    {'val': ',', 'sym': '<'},
    {'val': '.', 'sym': '>'},
    {'val': '/', 'sym': '?'},
  ];

  final List<Map<String, dynamic>> lastRowKeys = [
    {'val': '🌐', 'sym': 'fn'},
    {'val': 'control', 'sym': '⌃'},
    {'val': 'option', 'sym': '⌥'},
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(top: 40, bottom: 10),
        padding: EdgeInsets.all(10),
        width: 910,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.black12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 2,
              blurRadius: 10,
            ),
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: -1,
              blurRadius: 2,
            )
          ],
        ),
        child: Column(
          children: [
            Row(
              children: [
                KeyItem(
                  padding: EdgeInsets.only(left: 8, top: 12),
                  height: 40,
                  width: 55,
                  child: Text(
                    'esc',
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ),
                SizedBox(width: 8),
                Expanded(child: KeyItem(height: 40)),
                SizedBox(width: 8),
                KeyItem(height: 40, width: 45),
              ],
            ),
            // Second Row
            SizedBox(height: 8),
            Row(
              children: [
                ...secondRowKeys
                    .map(
                      (e) => KeyItem(
                        margin: EdgeInsets.only(
                            left: secondRowKeys[0] == e ? 0 : 4, right: 4),
                        padding:
                            EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                        width: 54,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              e['sym'],
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              e['val'],
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    )
                    .toList(),
                SizedBox(width: 4),
                Expanded(
                  child: KeyItem(
                    padding: EdgeInsets.all(8),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        'delete',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            // Third Row
            SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  child: KeyItem(
                    padding: EdgeInsets.all(8),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        'tab',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 4),
                ...thirdRowKeys
                    .map(
                      (e) => KeyItem(
                        margin: EdgeInsets.only(
                            left: thirdRowKeys[0] == e ? 4 : 8, right: 0),
                        padding:
                            EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                        width: 54,
                        child: Column(
                          mainAxisAlignment: e['sym'] != ''
                              ? MainAxisAlignment.spaceBetween
                              : MainAxisAlignment.center,
                          children: [
                            if (e['sym'] != '')
                              Text(
                                e['sym'],
                                style: TextStyle(color: Colors.white),
                              ),
                            Text(
                              e['val'],
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    )
                    .toList(),
              ],
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  child: KeyItem(
                    padding: EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ClipOval(
                          child: Container(
                            height: 4,
                            width: 4,
                            decoration: BoxDecoration(color: Colors.white),
                          ),
                        ),
                        Text(
                          'caps lock',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ),
                ...fourthRowKeys
                    .map(
                      (e) => KeyItem(
                        margin: EdgeInsets.only(
                            left: 8, right: fourthRowKeys[10] == e ? 4 : 0),
                        padding:
                            EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                        width: 54,
                        child: Column(
                          mainAxisAlignment: e['sym'] != ''
                              ? MainAxisAlignment.spaceBetween
                              : MainAxisAlignment.center,
                          children: [
                            if (e['sym'] != '')
                              Text(
                                e['sym'],
                                style: TextStyle(color: Colors.white),
                              ),
                            Text(
                              e['val'],
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    )
                    .toList(),
                SizedBox(width: 4),
                Expanded(
                  child: KeyItem(
                    padding: EdgeInsets.all(8),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        'return',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  child: KeyItem(
                    padding: EdgeInsets.all(8),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        'shift',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ),
                  ),
                ),
                ...fifthRowKeys
                    .map(
                      (e) => KeyItem(
                        margin: EdgeInsets.only(
                            left: 8, right: fifthRowKeys[9] == e ? 4 : 0),
                        padding:
                            EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                        width: 54,
                        child: Column(
                          mainAxisAlignment: e['sym'] != ''
                              ? MainAxisAlignment.spaceBetween
                              : MainAxisAlignment.center,
                          children: [
                            if (e['sym'] != '')
                              Text(
                                e['sym'],
                                style: TextStyle(color: Colors.white),
                              ),
                            Text(
                              e['val'],
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    )
                    .toList(),
                SizedBox(width: 4),
                Expanded(
                  child: KeyItem(
                    padding: EdgeInsets.all(8),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        'shift',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              children: [
                ...lastRowKeys
                    .map(
                      (e) => KeyItem(
                        padding:
                            EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                        margin: EdgeInsets.only(
                            left: lastRowKeys[0] == e ? 0 : 8,
                            right: lastRowKeys[2] == e ? 4 : 0),
                        width: 54,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Align(
                              alignment: Alignment.topRight,
                              child: Text(
                                e['sym'],
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: lastRowKeys[0] == e ? 12 : 14),
                              ),
                            ),
                            Align(
                              alignment: lastRowKeys[0] == e
                                  ? Alignment.bottomLeft
                                  : Alignment.bottomCenter,
                              child: Text(
                                e['val'],
                                style: TextStyle(
                                    color: Colors.white, fontSize: 11),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                    .toList(),
                SizedBox(width: 4),
                KeyItem(
                  width: 80,
                  padding:
                      EdgeInsets.only(left: 8, top: 4, right: 8, bottom: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '⌘',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                      Text(
                        'command',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 8),
                Expanded(child: KeyItem()),
                SizedBox(width: 8),
                KeyItem(
                  width: 80,
                  padding:
                      EdgeInsets.only(left: 8, top: 4, right: 8, bottom: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '⌘',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                      Text(
                        'command',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 8),
                KeyItem(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                  width: 54,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          lastRowKeys[2]['sym'],
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                      ),
                      Text(
                        lastRowKeys[2]['val'],
                        style: TextStyle(color: Colors.white, fontSize: 11),
                      )
                    ],
                  ),
                ),
                SizedBox(width: 8),
                Container(
                  width: 160,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Expanded(
                        child: KeyItem(
                          height: 24,
                          child: Icon(
                            Icons.arrow_left,
                            color: Colors.white,
                            size: 16,
                          ),
                        ),
                      ),
                      SizedBox(width: 6),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white24),
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.black87.withOpacity(0.8),
                          ),
                          child: Column(
                            children: [
                              KeyItem(
                                height: 24,
                                width: double.infinity,
                                child: Icon(
                                  Icons.arrow_drop_up,
                                  color: Colors.white,
                                  size: 16,
                                ),
                              ),
                              KeyItem(
                                height: 24,
                                width: double.infinity,
                                child: Icon(
                                  Icons.arrow_drop_down,
                                  color: Colors.white,
                                  size: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 6),
                      Expanded(
                        child: KeyItem(
                          height: 24,
                          child: Icon(
                            Icons.arrow_right,
                            color: Colors.white,
                            size: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class KeyItem extends StatelessWidget {
  const KeyItem({
    Key? key,
    this.height: 52,
    this.width,
    this.margin,
    this.padding,
    this.child,
  }) : super(key: key);

  final double height;
  final double? width;
  final EdgeInsets? margin;
  final EdgeInsets? padding;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      padding: padding,
      width: width,
      height: height,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white24),
        borderRadius: BorderRadius.circular(8),
        color: Colors.black87.withOpacity(0.8),
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            spreadRadius: 1,
            blurRadius: 0,
            offset: Offset(0, 0),
          )
        ],
      ),
      child: child,
    );
  }
}
