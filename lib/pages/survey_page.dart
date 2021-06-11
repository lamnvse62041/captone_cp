import 'package:cp_system/model/survey_model.dart';
import 'package:cp_system/widgets/common_background.dart';
import 'package:flutter/material.dart';

class SurveyPage extends StatefulWidget {
  const SurveyPage({Key key}) : super(key: key);

  @override
  _SurveyPageState createState() => _SurveyPageState();
}

enum SingingCharacter { A, B, C, D }

class _SurveyPageState extends State<SurveyPage> {
  SingingCharacter _character = SingingCharacter.A;
  int indexChange = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        CommonBackground(),
        Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 80),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        border: Border.all(color: Colors.white, width: 2),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(26),
                          bottomRight: Radius.circular(26),
                        ),
                      ),
                      child: Icon(
                        Icons.close,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 20,
                    ),
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      color: Colors.purple,
                      border: Border(
                        bottom: BorderSide(color: Colors.white),
                      ),
                    ),
                    child: Column(
                      children: [
                        Container(
                          child: Text(
                            'KHẢO SÁT (${listSurvey[indexChange].id}/${listSurvey.length})',
                            textAlign: TextAlign.center,
                            style:
                                Theme.of(context).textTheme.headline6.copyWith(
                                      color: Colors.white,
                                    ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Divider(
                          color: Colors.white,
                          thickness: 2,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.purple,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                listSurvey[indexChange].question,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1
                                    .copyWith(color: Colors.white),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: listSurvey[indexChange]
                                    .answer
                                    .asMap()
                                    .map(
                                      (key, value) => MapEntry(
                                        key,
                                        ListTile(
                                          title: Text(
                                            value.answer,
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText1
                                                .copyWith(color: Colors.white),
                                          ),
                                          leading: Radio<SingingCharacter>(
                                            fillColor:
                                                MaterialStateColor.resolveWith(
                                                    (states) => Colors.white),
                                            value: SingingCharacter.values[key],
                                            groupValue: _character,
                                            onChanged: (radioValue) {
                                              setState(() {
                                                _character = radioValue;
                                                print(radioValue);
                                                print(value.answer);
                                              });
                                            },
                                          ),
                                        ),
                                      ),
                                    )
                                    .values
                                    .toList(),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        indexChange != 4 ? indexChange += 1 : '';
                      });
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 14),
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Colors.white,
                          width: 2,
                        ),
                      ),
                      child: Text(
                        indexChange != 4 ? 'TIẾP THEO' : 'XONG',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1
                            .copyWith(color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    ));
  }
}
