import 'package:finapp/index.dart';

class VehiclesScreen extends StatelessWidget {
  const VehiclesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Home(
      title: "Fin Vehicles.",
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                    title: "View Vehicles",
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  )
                ],
              ),
            ),

            //No-Cost EMI on Cars

            const Center(
              child: TextWidget(
                title: "No-Cost EMI on Cars",
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 20),

            // image
            Container(
              color: FinappColor.noReddemedContainerColor,
              height: MediaQuery.of(context).size.height * 0.15,
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      mainAxisExtent: 100,
                      crossAxisSpacing: 10),
                  itemBuilder: (context, index) {
                    return PoductCard(
                      sizeOfImage: 75,
                      icon: Vehicales.twoVehicles[index].image,
                      title: Vehicales.twoVehicles[index].subName,
                      routeName: Vehicales.twoVehicles[index].routeName,
                    );
                  },
                  itemCount: Vehicales.twoVehicles.length,
                ),
              ),
            ),

            const SizedBox(height: 20),

            //No-Cost EMI on 2 Wheelers
            const Center(
              child: TextWidget(
                title: "No-Cost EMI on 2 Wheelers",
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),

            const SizedBox(height: 20),

            Container(
              color: FinappColor.noReddemedContainerColor,
              height: MediaQuery.of(context).size.height * 0.15,
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    mainAxisExtent: 100,
                  ),
                  itemBuilder: (context, index) {
                    return PoductCard(
                      sizeOfImage: 75,
                      icon: Vehicales.cars[index].image,
                      title: Vehicales.cars[index].subName,
                      routeName: Vehicales.cars[index].routeName,
                    );
                  },
                  itemCount: Vehicales.cars.length,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
