import '../../../index.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  FocusNode emailFocusNode = FocusNode();
  FocusNode passwordFocusNode = FocusNode();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    emailFocusNode.dispose();
    passwordFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const SizedBox(),
        title: const TextWidget(
          title: "Login",
          fontSize: 24,
          fontWeight: FontWeight.w600,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: InkWell(
                onTap: () {},
                child: assetImage('image/login/IconUser.png', 24)),
          )
        ],
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //  logo
              assetImage(
                'image/login/IllustrationLogin.png',
                200,
              ),
              const SizedBox(height: 20),
              // Log into your existing account!
              const TextWidget(
                title: "Log into your existing account!",
                fontSize: 23,
                fontWeight: FontWeight.w600,
              ),
              // Email

              MyTextFormField(
                controller: emailController,
                hintText: "Enter your email",
                lable: "E-mail",
                icon: Icons.email_outlined,
                currentFocusNode: emailFocusNode,
                keyboardType: TextInputType.emailAddress,
                nextFocusNode: passwordFocusNode,
              ),

              // Password

              MyTextFormField(
                controller: passwordController,
                hintText: "Enter your password",
                lable: "Password",
                icon: Icons.lock,
                currentFocusNode: passwordFocusNode,
                isPassWord: true,
                keyboardType: TextInputType.visiblePassword,
              ),

              // Remember me? and Need help?

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14.0),
                child: Row(
                  children: [
                    const Align(
                      alignment: Alignment.topLeft,
                      child: TextWidget(
                        title: "Remember me?",
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Consumer<LoginProvider>(
                      builder: (context, loginProvider, child) {
                        return Checkbox(
                          checkColor: Colors.black,
                          activeColor: const Color(0xFFD9D9D9),
                          side: const BorderSide(color: Colors.black45),
                          value: loginProvider.isCheck,
                          onChanged: (value) {
                            loginProvider.changeCheck();
                          },
                        );
                      },
                    ),
                    const Spacer(),
                    textButton("Need help?", () {}, Colors.blueAccent),
                  ],
                ),
              ),
              // LoginButton

              elevatedButton(
                "Login",
                () {
                  checkValidation(
                    context: context,
                    email: emailController.text,
                    password: passwordController.text,
                    fullName: emailController.text,
                    mobile: emailController.text,
                    confirmpassword: passwordController.text,
                    nextRoute: RoutesName.home
                  );
                },
                MediaQuery.of(context).size.width - 50,
                49,
                Colors.white,
              ),

              const SizedBox(height: 20),

              const Text(
                'Or Login with',
                style: TextStyle(
                  fontSize: 12,
                  color: FinappColor.textfieldBorderColor,
                ),
              ),

              // Login with Google or phone

              const SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  assetImage(
                    'image/login/IconGoogle.png',
                    30,
                  ),
                  const SizedBox(width: 15),
                  InkWell(
                    child: assetImage(
                      'image/login/IconPhone.png',
                      26,
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, RoutesName.getStartedPage);
                    },
                  ),
                ],
              ),

              const SizedBox(height: 15),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const TextWidget(
                    fontSize: 13,
                    fontWeight: FontWeight.normal,
                    title: "You Don't have an account ?",
                    color: FinappColor.textfieldBorderColor,
                  ),
                  textButton("Sign up", () {
                    Navigator.pushNamed(context, RoutesName.register);
                  }, FinappColor.textfieldBorderColor)
                ],
              ),

              // You Don't have an account ? Sign up
            ],
          ),
        ),
      ),
    );
  }
}
