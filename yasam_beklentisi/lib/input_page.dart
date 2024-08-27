import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:yasam_beklentisi/constants.dart';
import 'package:yasam_beklentisi/result.dart';
import 'package:yasam_beklentisi/userData.dart';

import 'cardTest.dart';
import 'containerTest.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String? seciliCinsiyet;
  double icilenSigara = 0.0;
  double yapilanSpor = 0.0;
  int boy = 170;
  int kilo = 60;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: scaffolBackColor,
        appBar: AppBar(
          backgroundColor: appbarBackColor,
          title: Text(
            'YAŞAM BEKLENTİSİ',
            style: textStyleTest,
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ContainerTest(
                      child: Row(
                        children: [
                          RotatedBox(
                            child: Text(
                              "BOY",
                              style: textStyleTest3,
                            ),
                            quarterTurns: 3,
                          ),
                          RotatedBox(
                            child: Text(
                              "${boy}",
                              style: textStyleTest3,
                            ),
                            quarterTurns: -1,
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                OutlinedButton(
                                  onPressed: () {
                                    setState(
                                      () {
                                        boy++;
                                      },
                                    );
                                  },
                                  child: Icon(Icons.add),
                                  style: OutlinedButton.styleFrom(
                                    backgroundColor: Colors.blue,
                                    side: BorderSide(color: Colors.white),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                  ),
                                ),
                                OutlinedButton(
                                  onPressed: () {
                                    setState(() {
                                      boy--;
                                    });
                                  },
                                  child: Icon(Icons.remove),
                                  style: OutlinedButton.styleFrom(
                                    backgroundColor: Colors.blue,
                                    side: BorderSide(color: Colors.white),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                      child: ContainerTest(
                    child: Row(
                      children: [
                        RotatedBox(
                          child: Text(
                            "KİLO",
                            style: textStyleTest3,
                          ),
                          quarterTurns: 3,
                        ),
                        RotatedBox(
                          child: Text(
                            "${kilo}",
                            style: textStyleTest3,
                          ),
                          quarterTurns: -1,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              OutlinedButton(
                                onPressed: () {
                                  setState(
                                    () {
                                      kilo++;
                                    },
                                  );
                                },
                                child: Icon(Icons.add),
                                style: OutlinedButton.styleFrom(
                                  backgroundColor: Colors.blue,
                                  side: BorderSide(color: Colors.white),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                              ),
                              OutlinedButton(
                                onPressed: () {
                                  setState(() {
                                    kilo--;
                                  });
                                },
                                child: Icon(Icons.remove),
                                style: OutlinedButton.styleFrom(
                                  backgroundColor: Colors.blue,
                                  side: BorderSide(color: Colors.white),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ContainerTest(
                      child: Column(
                        children: [
                          Text("Haftada Kaç Kez Spor Yapıyorsunuz",
                              style: textStyleTest3),
                          Text(
                            yapilanSpor.toInt().toString(),
                            style: textStyleTest3,
                          ),
                          Slider(
                            min: 0,
                            max: 7,
                            value: yapilanSpor,
                            onChanged: (newValue) {
                              setState(() {
                                yapilanSpor = newValue.roundToDouble();
                              });
                            },
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ContainerTest(
                      child: Column(
                        children: [
                          Text(
                            "günde kaç sigara içiyorsunuz",
                            style: textStyleTest3,
                          ),
                          Text(
                            icilenSigara.toInt().toString(),
                            style: textStyleTest3,
                          ),
                          Slider(
                            min: 0,
                            max: 30,
                            value: icilenSigara, //imleç pozisyonu
                            onChanged: (newValue) {
                              setState(() {
                                icilenSigara = newValue.roundToDouble();
                              });
                            },
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          seciliCinsiyet = "kadın";
                        });
                      },
                      child: ContainerTest(
                        renk: seciliCinsiyet == "kadın"
                            ? Colors.lightBlue[100]
                            : Colors.white,
                        child: CardTest(
                          cinsiyet: "kadın",
                          iconTest: FontAwesomeIcons.venus,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          seciliCinsiyet = "erkek";
                        });
                      },
                      child: ContainerTest(
                        renk: seciliCinsiyet == "erkek"
                            ? Colors.lightBlue[100]
                            : Colors.white,
                        child: CardTest(
                          cinsiyet: "erkek",
                          iconTest: FontAwesomeIcons.mars,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                MaterialPageRoute route = MaterialPageRoute(
                    builder: (context) => ResultPage(UserData(
                        kilo: kilo,
                        boy: boy,
                        icilenSigara: icilenSigara,
                        seciliCinsiyet: seciliCinsiyet,
                        yapilanSpor: yapilanSpor)));
                Navigator.push(context, route);
              },
              child: Text(
                "HESAPLA",
                style: textStyleTest3,
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
              ),
            )
          ],
        ));
  }
}
