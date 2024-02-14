import 'package:finapp/index.dart';

class PaymentArgument {
  final String name;
  final String id;
  final double amount;
  PaymentArgument(this.amount, this.name, this.id);
}

class UpiSearchPage extends StatefulWidget {
  const UpiSearchPage({super.key});

  @override
  State<UpiSearchPage> createState() => _UpiSearchPageState();
}

class _UpiSearchPageState extends State<UpiSearchPage> {
  TextEditingController searchController = TextEditingController();
  FocusNode searchFocusNode = FocusNode();

  @override
  void dispose() {
    searchController.dispose();
    searchFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Home(
      isShowSearchBar: false,
      title: "Fin UPI.",
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.popAndPushNamed(context, RoutesName.home);
                  },
                  icon: const Icon(
                    Icons.arrow_back_rounded,
                    color: FinappColor.textColor,
                    size: 30,
                  ),
                ),
                const TextWidget(
                  title: "Search User To Pay...",
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
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
                hintText: "search using phone no, or UPI id",
                hintStyle: TextStyle(color: FinappColor.textfieldBorderColor),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(14),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(14),
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(14),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      RoutesName.upipage,
                      arguments: PaymentArgument(
                        1000.0,
                        "Keval Thumar",
                        "thumarkeval12",
                      ),
                    );
                  },
                  title: const Text(
                    "User Name",
                  ),
                  subtitle: const Text(
                    "123456789",
                  ),
                  leading: const Card(
                    color: FinappColor.userDpColor,
                    child: SizedBox(
                      width: 50,
                      height: 50,
                      child: Icon(
                        Icons.account_circle,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
