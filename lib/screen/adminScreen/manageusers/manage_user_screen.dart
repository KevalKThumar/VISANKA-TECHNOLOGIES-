import 'package:finapp/index.dart';

class ManageUser extends StatelessWidget {
  const ManageUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: 20,
              itemBuilder: (context, index) {
                return const ListTile(
                  title: Text(
                    "User Name",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 69, 161, 195),
                    ),
                  ),
                  subtitle: Text(
                    "1234567890",
                  ),
                  leading: Card(
                    color: FinappColor.noReddemedContainerColor,
                    child: SizedBox(
                      width: 40,
                      height: 40,
                      child: Icon(Icons.person),
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
