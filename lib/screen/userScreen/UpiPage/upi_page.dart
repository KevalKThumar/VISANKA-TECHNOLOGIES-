// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, deprecated_member_use

import 'package:finapp/index.dart';

class UpiPage extends StatefulWidget {
  const UpiPage({super.key});

  @override
  State<UpiPage> createState() => _UpiPageState();
}

class _UpiPageState extends State<UpiPage> {
  TextEditingController amountController = TextEditingController();
  FocusNode amountFocusNode = FocusNode();
  TextEditingController noteController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments as PaymentArgument;
    return Home(
      isUPIpage: true,
      isShowSearchBar: false,
      title: "Fin UPI.",
      child: Scaffold(
        backgroundColor: FinappColor.appBarColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              //ABC XXOOOO
              Center(
                child: const TextWidget(
                  title: "ABC xxOOOO",
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  assetImage('image/bill/Logo.png', 20),
                  TextWidget(
                    title: "ID:${args.id}@okicici",
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  )
                ],
              ),

              SizedBox(height: 120),

              Align(
                alignment: Alignment.center,
                child: TextFormField(
                  textAlignVertical: TextAlignVertical.center,
                  textAlign: TextAlign.start,
                  maxLines: 1,
                  controller: amountController,
                  focusNode: amountFocusNode,
                  keyboardType: TextInputType.number,
                  maxLength: 6,
                  cursorColor: Colors.white,
                  onChanged: (value) {
                    if (value.length == 6) {
                      amountFocusNode.unfocus();
                    }
                  },
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.bold),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.34,
                    ),
                    prefix: Text(
                      "₹ ",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                      ),
                    ),
                    border: InputBorder.none,
                    hintText: "0",
                    hintStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.bold),
                    counterText: '',
                  ),
                ),
              ),

              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  shape: ContinuousRectangleBorder(
                      borderRadius: BorderRadius.circular(25)),
                  side: BorderSide(
                    color: Colors.white,
                  ),
                ),
                child: Text(
                  "Add Note",
                  style: TextStyle(color: Colors.white),
                ),
              ),

              SizedBox(height: 200),

              Center(
                child: Dismissible(
                  key: UniqueKey(),
                  background: Container(
                    color: Colors.transparent,
                    child: Align(
                      alignment: Alignment(-0.9, 0),
                      child: Icon(
                        Icons.close,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                  ),
                  secondaryBackground: Container(
                    color: Colors.transparent,
                    child: Align(
                      alignment: Alignment(0.9, 0),
                      child: Icon(
                        Icons.done,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                  ),
                  onDismissed: (direction) {
                    if (direction == DismissDirection.startToEnd) {
                      showModalBottomSheet(
                        context: context,
                        builder: (context) {
                          return amountController.text.isNotEmpty &&
                                  amountController.text.length == 6
                              ? Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.5,
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                      color: FinappColor.appBarColor,
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20),
                                      )),
                                  child: Column(
                                    children: [
                                      SizedBox(height: 5),
                                      assetImage('image/bill/Base.png', 4),
                                      SizedBox(height: 30),
                                      TextWidget(
                                        title: args.name,
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                      TextWidget(
                                        title: args.id,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color(0xFFFFFFFF).withOpacity(0.5),
                                      ),
                                      SizedBox(height: 20),
                                      TextWidget(
                                        title: "₹ ${amountController.text}",
                                        fontSize: 50,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                      SizedBox(height: 10),
                                      SizedBox(
                                        height: 50,
                                        child: OutlinedButton(
                                          onPressed: () {
                                            Navigator.popUntil(
                                              context,
                                              (route) => route.isFirst,
                                            );
                                          },
                                          style: OutlinedButton.styleFrom(
                                            shape: ContinuousRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(25)),
                                            side: BorderSide(
                                              color: Colors.white,
                                            ),
                                          ),
                                          child: Text(
                                            "Payement Cancel",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      ),
                                      // Elevated button
                                      SizedBox(height: 20),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width -
                                                60,
                                        height: 40,
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor:
                                                FinappColor.userDpColor,
                                          ),
                                          onPressed: () {},
                                          child: Text(
                                            "Confirm Payment",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          TextWidget(
                                              title: "Powered by",
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                          assetImage('image/bill/Logo.png', 10),
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              : ScaffoldMessenger(
                                  child: Center(
                                    child: Container(
                                      alignment: Alignment.center,
                                      height: 150,
                                      width: double.infinity,
                                      margin: EdgeInsets.all(10),
                                      padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                          color: FinappColor.appBarColor,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                            color: FinappColor.appBarColor,
                                            width: 2,
                                            style: BorderStyle.solid,
                                            strokeAlign:
                                                BorderSide.strokeAlignInside,
                                          ),
                                          boxShadow: [
                                            BoxShadow(
                                              color: FinappColor.appBarColor,
                                              blurRadius: 6,
                                              offset: Offset(0, 2),
                                              spreadRadius: 1,
                                              blurStyle: BlurStyle.normal,
                                            )
                                          ]),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Text(
                                            "Please Enter Amount",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          // button try again
                                          OutlinedButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                              setState(() {
                                                amountController.text = "";
                                              });
                                            },
                                            style: OutlinedButton.styleFrom(
                                                shape:
                                                    ContinuousRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    25,
                                                  ),
                                                ),
                                                side: BorderSide(
                                                  color: FinappColor.errorColor,
                                                )),
                                            child: Text(
                                              "Try Again",
                                              style: TextStyle(
                                                color: FinappColor.errorColor,
                                                fontSize: 20,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                        },
                      );
                    } else if (direction == DismissDirection.endToStart) {
                      Navigator.pop(context);
                    }
                  },
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: FinappColor.userDpColor,
                      child: FaIcon(
                        FontAwesomeIcons.inr,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 60,
              )
            ],
          ),
        ),
      ),
    );
  }
}
