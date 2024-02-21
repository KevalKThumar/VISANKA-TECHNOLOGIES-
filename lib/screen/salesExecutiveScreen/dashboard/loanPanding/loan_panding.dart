import 'package:finapp/index.dart';

class LoanPanding extends StatelessWidget {
  const LoanPanding ({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
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
    );
  }
}
