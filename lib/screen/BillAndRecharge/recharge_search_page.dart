import 'package:finapp/index.dart';

class RechargeSearchPage extends StatefulWidget {
  const RechargeSearchPage({super.key});

  @override
  State<RechargeSearchPage> createState() => _RechargeSearchPageState();
}

class _RechargeSearchPageState extends State<RechargeSearchPage> {
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
      title: "FinBill.",
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.popAndPushNamed(
                      context,
                      RoutesName.billAndRecharge,
                    );
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
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
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
                hintText: "Enter Mobile Number",
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
                    Navigator.pushNamed(context, RoutesName.rechargeOption,arguments: UserData('User Name','1234567890'));
                  },
                  title: const Text(
                    "User Name",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 69, 161, 195)),
                  ),
                  subtitle: const Text(
                    "1234567890",
                  ),
                  leading: const Card(
                    color: FinappColor.noReddemedContainerColor,
                    child: SizedBox(
                      width: 40,
                      height: 40,
                      child: Icon(
                        Icons.account_circle,
                        color: FinappColor.userDpColor,
                        size: 35,
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
