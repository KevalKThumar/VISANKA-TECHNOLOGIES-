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
  @override
  Widget build(BuildContext context) {
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
                  const TextWidget(
                    title: "ID:thumarkeval@okicici",
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  )
                ],
              ),

              SizedBox(height: 120),

              Center(
                child: Container(
                  padding: EdgeInsets.only(left: 12),
                  height: 100,
                  child: TextFormField(
                    textAlignVertical: TextAlignVertical.center,
                    controller: amountController,
                    focusNode: amountFocusNode,
                    keyboardType: TextInputType.number,
                    cursorColor: Colors.white,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.bold),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width - 230),
                      prefix: Text(
                        "₹",
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
                    ),
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
                        Icons.done,
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
                        Icons.close,
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
                          return Column(
                            children: [
                              
                              Container(
                                color: FinappColor.appBarColor,
                                child: Center(
                                  child: Text(
                                    'Task Completed',
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      );
                    } else if (direction == DismissDirection.endToStart) {
                      // Perform task when swiped to the left (e.g., delete)
                      print('Task deleted!');
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
