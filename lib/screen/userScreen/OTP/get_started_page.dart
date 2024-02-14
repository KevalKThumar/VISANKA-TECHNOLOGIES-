

import 'package:finapp/index.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController phoneController = TextEditingController();
    final FocusNode phoneFocusNode = FocusNode();
    return Scaffold(
      appBar: AppBar(
        title: const TextWidget(
            title: 'FinApp.', fontSize: 24, fontWeight: FontWeight.w600),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 100),
            // logo
            Center(child: assetImage('image/otp/trophy1.png', 200)),
            const SizedBox(height: 40),
            // Let’s get started?
            const TextWidget(
              title: "Let’s get started!",
              fontSize: 23,
              fontWeight: FontWeight.w600,
            ),
            // Enter your mobile number to continue
            const TextWidget(
              title: "Enter your mobile number to continue",
              fontSize: 15,
              fontWeight: FontWeight.w400,
            ),

            const SizedBox(height: 30),
            // textfield for phone with +91 Mobile Number
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: TextFormField(
                controller: phoneController,
                decoration: const InputDecoration(
                    hintText: "Mobile number",
                    hintStyle: TextStyle(
                      color: FinappColor.textfieldBorderColor,
                      fontWeight: FontWeight.w400,
                    ),
                    prefixIcon: Icon(Icons.phone)),
                focusNode: phoneFocusNode,
                keyboardType: TextInputType.number,
                maxLength: 10,
                onChanged: (value) {
                  phoneController.text = value;
                },
                onFieldSubmitted: (value) {
                  // call opt api
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Enter your phone number';
                  } else if (value.length < 10) {
                    return 'Enter 10 digit number';
                  }
                  return null;
                },
              ),
            ),

            // OTP will be sent to this number
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: TextWidget(
                  title: "OTP will be sent to this number",
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),

            // send otp button

            const SizedBox(height: 30),
            elevatedButton(
              "Send OTP",
              () {},
              MediaQuery.of(context).size.width - 70,
              50,
              Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
