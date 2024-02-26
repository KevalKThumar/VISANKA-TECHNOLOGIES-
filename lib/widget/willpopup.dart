import 'package:finapp/index.dart';
import 'package:flutter/services.dart';

Widget exitDailog(context) {
  return Dialog(
      child: Container(
    padding: const EdgeInsets.all(15),
    height: MediaQuery.of(context).size.height * 0.25,
    width: MediaQuery.of(context).size.width - 40,
    decoration: BoxDecoration(
      borderRadius: const BorderRadius.all(Radius.circular(12)),
      color: Colors.grey[200],
    ),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const TextWidget(
          title: "Confirm",
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: FinappColor.textColor,
        ),
        const Divider(),
        const SizedBox(height: 10),
        const TextWidget(
          title: "Are you sure you want to exit!!",
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: FinappColor.textColor,
        ),
        const SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.25,
              height: 40,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: FinappColor.userDpColor,
                  shape: const ContinuousRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(14),
                    ),
                  ),
                ),
                child: const Text(
                  "YES",
                  style: TextStyle(
                    color: FinappColor.reddemedContainerColor,
                  ),
                ),
                onPressed: () {
                  SystemNavigator.pop();
                },
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.25,
              height: 40,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: FinappColor.userDpColor,
                  shape: const ContinuousRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(14),
                    ),
                  ),
                ),
                child: const Text(
                  "NO",
                  style: TextStyle(
                    color: FinappColor.reddemedContainerColor,
                  ),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        )
      ],
    ),
  ));
}
