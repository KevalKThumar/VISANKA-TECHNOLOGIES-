// ignore_for_file: prefer_const_constructors

import '../../../index.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController fullNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController mobileNumberController = TextEditingController();

  FocusNode fullNameFocusNode = FocusNode();
  FocusNode emailFocusNode = FocusNode();
  FocusNode passwordFocusNode = FocusNode();
  FocusNode confirmPasswordFocusNode = FocusNode();
  FocusNode mobileNumberFocusNode = FocusNode();

  @override
  void dispose() {
    fullNameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    mobileNumberController.dispose();

    fullNameFocusNode.dispose();
    emailFocusNode.dispose();
    passwordFocusNode.dispose();
    confirmPasswordFocusNode.dispose();
    mobileNumberFocusNode.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const TextWidget(
          title: "Registration",
          fontSize: 24,
          fontWeight: FontWeight.w600,
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: InkWell(
                onTap: () {},
                child: assetImage('image/register/IconUser.png', 24)),
          )
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Center(
          child: Column(
            children: [
              // logo
              assetImage('image/register/IllustrationRegister.png', 200),
              //  Register an account!

              const TextWidget(
                title: "Register an account!",
                fontSize: 23,
                fontWeight: FontWeight.w600,
              ),

              // full Name
              MyTextFormField(
                controller: fullNameController,
                hintText: "Enter your full name",
                lable: "Full Name",
                icon: Icons.person,
                currentFocusNode: fullNameFocusNode,
                nextFocusNode: emailFocusNode,
                keyboardType: TextInputType.text,
              ),
              // email

              MyTextFormField(
                controller: emailController,
                hintText: "Enter your email",
                lable: "E-mail",
                icon: Icons.email_outlined,
                currentFocusNode: emailFocusNode,
                nextFocusNode: mobileNumberFocusNode,
                keyboardType: TextInputType.emailAddress,
              ),

              // mobile number

              MyTextFormField(
                controller: mobileNumberController,
                hintText: "Enter your mobile number",
                lable: "Mobile Number",
                icon: Icons.phone,
                currentFocusNode: mobileNumberFocusNode,
                nextFocusNode: passwordFocusNode,
                keyboardType: TextInputType.phone,
              ),

              // password

              MyTextFormField(
                controller: passwordController,
                hintText: "Enter your password",
                lable: "Password",
                icon: Icons.lock,
                currentFocusNode: passwordFocusNode,
                nextFocusNode: confirmPasswordFocusNode,
                isPassWord: true,
                keyboardType: TextInputType.visiblePassword,
              ),

              // confirm password

              MyTextFormField(
                controller: confirmPasswordController,
                hintText: "Confirm your password",
                lable: "Confirm Password",
                icon: Icons.lock,
                currentFocusNode: confirmPasswordFocusNode,
                isPassWord: true,
                keyboardType: TextInputType.visiblePassword,
              ),

              // Agree to Terms and Conditions

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Row(
                  children: [
                    const TextWidget(
                      title: "Agree to Terms and Conditions",
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: FinappColor.textfieldBorderColor,
                    ),
                    Consumer<RegisterProvider>(
                      builder: (context, registerProvider, child) {
                        return Checkbox(
                          checkColor: Colors.black,
                          activeColor: const Color(0xFFD9D9D9),
                          side: const BorderSide(color: Colors.black45),
                          value: registerProvider.isCheck,
                          onChanged: (value) {
                            registerProvider.changeCheck();
                          },
                        );
                      },
                    ),
                  ],
                ),
              ),
              // Register button

              elevatedButton(
                'Sign Up',
                () {},
                MediaQuery.of(context).size.width - 70,
                50,
                Colors.white,
              )
            ],
          ),
        ),
      ),
    );
  }
}
