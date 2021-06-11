import 'package:flutter/material.dart';

class ContributeQuestions extends StatefulWidget {
  const ContributeQuestions({Key key}) : super(key: key);

  @override
  _ContributeQuestionsState createState() => _ContributeQuestionsState();
}

enum SingingCharacter { A, B, C, D }

class _ContributeQuestionsState extends State<ContributeQuestions> {
  SingingCharacter _character = SingingCharacter.A;
  List<String> listQuestion = ['A', 'B', 'C', 'D'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.only(top: 80),
          color: Colors.purple,
          width: MediaQuery.of(context).size.width,
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
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    Center(
                      child: Text(
                        'ĐÓNG GÓP CÂU HỎI',
                        style: Theme.of(context)
                            .textTheme
                            .headline6
                            .copyWith(color: Colors.white),
                      ),
                    ),
                    Divider(
                      color: Colors.white,
                      thickness: 2,
                    ),
                    Container(
                      height: 140,
                      child: TextField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          hintText: 'Nhập câu hỏi...',
                          hintStyle: Theme.of(context)
                              .textTheme
                              .bodyText1
                              .copyWith(color: Colors.white),
                          border: InputBorder.none,
                        ),
                        keyboardType: TextInputType.multiline,
                        textInputAction: TextInputAction.newline,
                        minLines: 1,
                        maxLines: 6,
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'Tối đa 500 từ',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2
                            .copyWith(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: SingingCharacter.values
                    .asMap()
                    .map(
                      (key, value) => MapEntry(
                        key,
                        Container(
                          margin: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                  color: Colors.blue[900],
                                  // borderRadius: BorderRadius.circular(40),
                                  shape: BoxShape.circle,
                                ),
                                child: Text(
                                  listQuestion[key],
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1
                                      .copyWith(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: TextField(
                                  style: TextStyle(color: Colors.white),
                                  decoration: InputDecoration(
                                    hintText: 'Nhập câu trả lời ...',
                                    hintStyle: TextStyle(
                                        fontStyle: FontStyle.italic,
                                        color: Colors.white),
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                              Theme(
                                data: Theme.of(context).copyWith(
                                  unselectedWidgetColor: Colors.red,
                                  disabledColor: Colors.yellow,
                                ),
                                child: Radio<SingingCharacter>(
                                  fillColor: MaterialStateColor.resolveWith(
                                      (states) => Colors.white),
                                  value: SingingCharacter.values[key],
                                  groupValue: _character,
                                  onChanged: (value) {
                                    setState(() {
                                      _character = value;
                                    });
                                    print(value.toString().split('.').last);
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                    .values
                    .toList(),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 10),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Colors.white,
                    width: 2,
                  ),
                ),
                child: Text(
                  'XONG',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      .copyWith(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
