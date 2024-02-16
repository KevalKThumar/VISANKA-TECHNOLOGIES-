import 'package:finapp/index.dart';

class OneUserLoan extends StatefulWidget {
  const OneUserLoan({super.key});

  @override
  State<OneUserLoan> createState() => _OneUserLoanState();
}

class _OneUserLoanState extends State<OneUserLoan> {
  TextEditingController searchController = TextEditingController();
  FocusNode searchFocusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const TextWidget(
          title: "UserName",
          fontSize: 24,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
        centerTitle: true,
        backgroundColor: FinappColor.appBarColor,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: InkWell(
              onTap: () {
                // Navigator.pushNamed(context, RoutesName.adminLogin);
              },
              child: const Icon(
                Icons.notifications,
                color: Colors.white,
                size: 24,
              ),
            ),
          ),
        ],
        elevation: 0,
        leading: const Icon(
          Icons.menu,
          color: Colors.white,
          size: 24,
        ),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 55,
            color: FinappColor.appBarColor,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 8.0, left: 10, right: 10),
              child: TextFormField(
                cursorColor: FinappColor.textfieldBorderColor,
                controller: searchController,
                focusNode: searchFocusNode,
                decoration: const InputDecoration(
                  suffixIcon: Icon(
                    Icons.search,
                    color: FinappColor.textfieldBorderColor,
                  ),
                  contentPadding: EdgeInsets.only(top: 5, bottom: 5, left: 10),
                  fillColor: Colors.white,
                  filled: true,
                  hintText: "Search Loan",
                  hintStyle: TextStyle(color: FinappColor.textfieldBorderColor),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(14),
                    ),
                    borderSide: BorderSide.none,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(14),
                    ),
                    borderSide: BorderSide.none,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(14),
                    ),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8, top: 8),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back_rounded,
                    color: FinappColor.textColor,
                    size: 30,
                  ),
                ),
                const TextWidget(
                  title: "Total Loan:- (6)",
                  fontSize: 21,
                  fontWeight: FontWeight.w600,
                )
              ],
            ),
          ),
          // loan Card

          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, RoutesName.loanDetails);
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 2),
                    child: Container(
                      width: MediaQuery.of(context).size.width - 20,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        border: Border(
                          bottom: BorderSide(
                            color: FinappColor.appBarColor,
                            width: 3,
                          ),
                          top: BorderSide(
                            color: FinappColor.appBarColor,
                            width: 3,
                          ),
                          right: BorderSide(
                            color: FinappColor.appBarColor,
                            width: 3,
                          ),
                          left: BorderSide(
                            color: FinappColor.appBarColor,
                            width: 3,
                          ),
                        ),
                      ),
                      child: Column(
                        children: [
                          const SizedBox(height: 10),
                          // first
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const SizedBox(width: 20),

                              // Logo
                              assetImage("image/home/Loan.png", 50),
                              const SizedBox(width: 30),

                              // title
                              const Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // name of sender / receiver
                                  TextWidget(
                                    title: "Keval",
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  // id
                                  TextWidget(
                                    title: "Loan Id:- 12345",
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ],
                              ),
                              // Price
                            ],
                          ),

                          // Amount and Rate

                          const SizedBox(height: 10),

                          const Row(
                            children: [
                              SizedBox(width: 20),
                              // Amount
                              TextWidget(
                                title: "Amount:- 300000",
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                              SizedBox(width: 30),
                              TextWidget(
                                title: "Rate:- 12%",
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                              // Rate
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
              itemCount: 6,
            ),
          ),

          const SizedBox(height: 20)
        ],
      ),
    );
  }
}
