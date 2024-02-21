import 'package:finapp/index.dart';

class AppliedUserList extends StatefulWidget {
  const AppliedUserList({super.key});

  @override
  State<AppliedUserList> createState() => _AppliedUserListState();
}

class _AppliedUserListState extends State<AppliedUserList> {
  TextEditingController searchController = TextEditingController();
  FocusNode searchFocusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const TextWidget(
          title: "Applied User List",
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
                  hintText: "Search user",
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
          Expanded(
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: 20,
              itemBuilder: (context, index) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2),
                  child: ListTile(
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        RoutesName.approveOrRejectScreen,
                      );
                    },
                    title: const Text(
                      "User Name",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 69, 161, 195),
                      ),
                    ),
                    subtitle: const Text(
                      "UserId:1234567890",
                    ),
                    leading: const Card(
                      color: FinappColor.noReddemedContainerColor,
                      child: SizedBox(
                        width: 40,
                        height: 40,
                        child: Icon(Icons.person),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
