import 'package:cp_system/widgets/commom_thongkesolieu.dart';
import 'package:cp_system/widgets/common_background.dart';
import 'package:flutter/material.dart';

class ThongKeSoLieu extends StatefulWidget {
  const ThongKeSoLieu({Key key}) : super(key: key);

  @override
  _ThongKeSoLieuState createState() => _ThongKeSoLieuState();
}

class _ThongKeSoLieuState extends State<ThongKeSoLieu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CommonBackground(),
          Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                padding: const EdgeInsets.only(top: 100),
                // color: Colors.purple,
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
                            color: Colors.purple,
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
                        // margin: const EdgeInsets.all(10),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.purple,
                          borderRadius: BorderRadius.circular(1),
                          border: Border.all(
                            color: Colors.white,
                            width: 2,
                          ),
                        ),
                        child: Center(
                          child: Text(
                          'Thong Ke So Lieu',
                          style: Theme.of(context)
                              .textTheme
                              .headline5
                              .copyWith(color: Colors.white),
                        ),
                        ),
                      ),
                      Container(
                        // margin: const EdgeInsets.all(10),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.purple,
                          borderRadius: BorderRadius.circular(1),
                          border: Border.all(
                            color: Colors.white,
                            width: 2,
                          ),
                        ),
                        child: Column(
                          //  mainAxisAlignment:MainAxisAlignment.start,
                          children: [
                            ThongKeSoLieuPage(text: "Tong So cau tra loi :",soLieu: "12",),
                            Divider(
                              color: Colors.white,
                              thickness: 2,
                            ),
                            ThongKeSoLieuPage(text: "Cau tra loi dung",soLieu: "12",),
                            Divider(
                              color: Colors.white,
                              thickness: 2,
                            ),
                            ThongKeSoLieuPage(text: "Câu trả lời sai:",soLieu: "12",),
                            Divider(
                              color: Colors.white,
                              thickness: 2,
                            ),
                            ThongKeSoLieuPage(text: "Tỷ lệ trả lời đúng",soLieu: "12",),
                            Divider(
                              color: Colors.white,
                              thickness: 2,
                            ),
                            ThongKeSoLieuPage(text: "Trò chơi đã chơi:",soLieu: "12",),
                            Divider(
                              color: Colors.white,
                              thickness: 2,
                            ),
                            ThongKeSoLieuPage(text: "Số lần thắng cuộc:",soLieu: "12",),
                            Divider(
                              color: Colors.white,
                              thickness: 2,
                            ),
                            ThongKeSoLieuPage(text: "Điểm số đếm được:",soLieu: "12",)
                            //  Divider(
                            //   color: Colors.white,
                            //   thickness: 2,
                            // ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Container(
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
                          'Xong',
                          style: Theme.of(context)
                              .textTheme
                              .headline5
                              // .bodyText2
                              .copyWith(color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ]),
              ),
            ],
          )
        ],
      ),
    );
  }
}
