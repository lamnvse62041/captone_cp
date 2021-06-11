import 'package:cp_system/pages/change_name.dart';
import 'package:cp_system/pages/contribute_questions.dart';
import 'package:cp_system/pages/do_kho.dart';
import 'package:cp_system/pages/new_page.dart';
import 'package:cp_system/pages/stt.dart';
import 'package:cp_system/pages/survey_page.dart';
import 'package:cp_system/pages/thong_ke_so_liey.dart';
import 'package:cp_system/widgets/common_background.dart';
import 'package:cp_system/widgets/common_button.dart';
import 'package:cp_system/widgets/common_button2.dart';
import 'package:cp_system/widgets/setting_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool sound = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CommonBackground(),
          Column(
            children: [
              Image.asset(
                'assets/pngs/logo.png',
              ),
              const SizedBox(
                height: 40,
              ),
              CommonButton(
                  function: () {
                    showDialog(
                      barrierDismissible: false,
                      context: context,
                      builder: (context) {
                        return StatefulBuilder(
                          builder: (context, setState) {
                            return AlertDialog(
                              insetPadding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              contentPadding: const EdgeInsets.all(0),
                              backgroundColor: Colors.teal,
                              title: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      'Do Kho',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline6
                                          .copyWith(color: Colors.white),
                                    ),
                                  ),
                                  Positioned(
                                    right: 0,
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      child: Icon(
                                        Icons.close,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Divider(
                                    color: Colors.white,
                                    thickness: 2,
                                  ),
                                  ButtonSetting(
                                    function: () {},
                                    icon: 'assets/svgs/console.svg',
                                    text: 'De ',
                                  ),
                                  ButtonSetting(
                                    function: () {
                                      // Navigator.push(
                                      //   context,
                                      //   MaterialPageRoute(
                                      //     builder: (BuildContext context) =>
                                      //         ContributeQuestions(),
                                      //   ),
                                      // );
                                    },
                                    icon: 'assets/svgs/console.svg',
                                    text: 'Kho',
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      },
                    );
                  },
                  icon: 'assets/svgs/console.svg',
                  text: 'Đấu Đơn',
                  color: Colors.blue),
              CommonButton(
                function: () {
                  showDialog(
                    barrierDismissible: false,
                    context: context,
                    builder: (context) {
                      return StatefulBuilder(
                        builder: (context, setState) {
                          return AlertDialog(
                            insetPadding:
                                const EdgeInsets.symmetric(horizontal: 20),
                            contentPadding: const EdgeInsets.all(0),
                            backgroundColor: Colors.teal,
                            title: Stack(
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Thach Dau',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline6
                                        .copyWith(color: Colors.white),
                                  ),
                                ),
                                Positioned(
                                  right: 0,
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: Icon(
                                      Icons.close,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Divider(
                                  color: Colors.white,
                                  thickness: 2,
                                ),
                                ButtonSetting(
                                  function: () {},
                                  icon: 'assets/svgs/console.svg',
                                  text: 'Ban Be ',
                                ),
                                ButtonSetting(
                                  function: () {
                                    // Navigator.push(
                                    //   context,
                                    //   MaterialPageRoute(
                                    //     builder: (BuildContext context) =>
                                    //         ContributeQuestions(),
                                    //   ),
                                    // );
                                  },
                                  icon: 'assets/svgs/console.svg',
                                  text: 'Doi Thu',
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    },
                  );
                },
                icon: 'assets/svgs/console.svg',
                text: 'Thách Đấu',
                color: Colors.blue,
              ),
              CommonButton(
                function: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SurveyPage()),
                  );
                },
                icon: 'assets/svgs/console.svg',
                text: 'Khảo Sát',
                color: Colors.blue,
              ),
              const SizedBox(
                height: 60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CommonButton2(
                    function: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SttSumi(),
                        ),
                      );
                    },
                    icon: Icons.ac_unit,
                  ),
                  CommonButton2(
                    function: () {},
                    icon: Icons.rowing,
                  ),
                  CommonButton2(
                    function: () {
                      showDialog(
                        barrierDismissible: false,
                        context: context,
                        builder: (context) {
                          return StatefulBuilder(
                            builder: (context, setState) {
                              return AlertDialog(
                                insetPadding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                contentPadding: const EdgeInsets.all(0),
                                backgroundColor: Colors.teal,
                                title: Stack(
                                  children: [
                                    Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        'CÀI ĐẶT',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline6
                                            .copyWith(color: Colors.white),
                                      ),
                                    ),
                                    Positioned(
                                      right: 0,
                                      child: GestureDetector(
                                        onTap: () {
                                          Navigator.pop(context);
                                        },
                                        child: Icon(
                                          Icons.close,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                content: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Divider(
                                      color: Colors.white,
                                      thickness: 2,
                                    ),
                                    ButtonSetting(
                                      function: () {
                                        setState(() {
                                          sound = !sound;
                                        });
                                      },
                                      icon: 'assets/svgs/console.svg',
                                      text: 'Âm Thanh',
                                      sound: ' ${sound ? 'Bật' : 'Tắt'}',
                                      color: sound ? Colors.green : Colors.red,
                                    ),
                                    ButtonSetting(
                                      function: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                ContributeQuestions(),
                                          ),
                                        );
                                      },
                                      icon: 'assets/svgs/console.svg',
                                      text: 'Đóng góp câu hỏi',
                                    ),
                                    ButtonSetting(
                                      function: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                ThongKeSoLieu(),
                                          ),
                                        );
                                      },
                                      icon: 'assets/svgs/console.svg',
                                      text: 'Thống kê số liệu',
                                    ),
                                    ButtonSetting(
                                      function: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  ChangeName()),
                                        );
                                      },
                                      icon: 'assets/svgs/console.svg',
                                      text: 'Đổi tên',
                                    ),
                                    ButtonSetting(
                                      function: (){
                                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Fix()
                                    ),);
                                      },
                                      icon: 'assets/svgs/console.svg',
                                      text: 'Báo lỗi',
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                  ],
                                ),
                              );
                            },
                          );
                        },
                      );
                    },
                    icon: Icons.settings,
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
