import 'package:finapp/index.dart';

class AccountEditPage extends StatefulWidget {
  const AccountEditPage({super.key});

  @override
  State<AccountEditPage> createState() => _AccountEditPageState();
}

class _AccountEditPageState extends State<AccountEditPage> {
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
    return Home(
      isShowSearchBar: false,
      title: "Fin Account.",
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8, top: 8),
              child: Row(
                children: [
                  
                  IconButton(
                    onPressed: () {
                      Navigator.popAndPushNamed(
                          context, RoutesName.account);
                    },
                    icon: const Icon(
                      Icons.arrow_back_rounded,
                      color: FinappColor.textColor,
                      size: 30,
                    ),
                  ),
                  const TextWidget(
                    title: "Edit Profile  ",
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  )
                ],
              ),
            ),

            // logo
          Consumer<ImagePickerProvider>(
              builder: (context, value, child) {
                return Center(
                  child: GestureDetector(
                    onTap: () async {
                      final ImagePicker imagePicker = ImagePicker();
                      final ImageCropper imageCropper = ImageCropper();
                      final XFile? images = await imagePicker.pickImage(
                        source: ImageSource.gallery,
                        imageQuality: 70,
                      );
                      
                      final croppedImage = await imageCropper.cropImage(
                        sourcePath: images!.path,
                        compressFormat: ImageCompressFormat.png,
                        compressQuality: 70,
                        uiSettings: [
                          AndroidUiSettings(
                            toolbarTitle: 'Cropper',
                            toolbarColor: FinappColor.appBarColor,
                            toolbarWidgetColor: Colors.white,
                            initAspectRatio: CropAspectRatioPreset.square,
                            lockAspectRatio: false,
                          ),
                          IOSUiSettings(
                            title: 'Cropper',
                          ),
                        ],
                      );
                      value.changeImage(croppedImage!.path);
                    },
                    child: CircleAvatar(
                        radius: 60,
                        backgroundColor: value.image == ""
                            ? FinappColor.userDpColor
                            : Colors.grey[200],
                        child: value.image == ""
                            ? const Icon(Icons.person,
                                size: 90, color: Colors.white)
                            : ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Image.file(
                                  File(value.image),
                                  fit: BoxFit.fill,
                                ),
                              )),
                  ),
                );
              },
            ),

            const SizedBox(height: 10),
            // full Name
            MyTextFormField(
              controller: fullNameController,
              hintText: "Thumar Keval",
              lable: "Name",
              icon: Icons.person,
              currentFocusNode: fullNameFocusNode,
              nextFocusNode: emailFocusNode,
              keyboardType: TextInputType.text,
            ),
            // email

            MyTextFormField(
              controller: emailController,
              hintText: "thumar@keval",
              lable: "E-mail",
              icon: Icons.email_outlined,
              currentFocusNode: emailFocusNode,
              nextFocusNode: mobileNumberFocusNode,
              keyboardType: TextInputType.emailAddress,
            ),

            // mobile number

            MyTextFormField(
              controller: mobileNumberController,
              hintText: "+91 1234567890",
              lable: "Number",
              icon: Icons.phone,
              currentFocusNode: mobileNumberFocusNode,
              nextFocusNode: passwordFocusNode,
              keyboardType: TextInputType.phone,
            ),

            // password

            MyTextFormField(
              controller: passwordController,
              hintText: "Enter password",
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
              lable: "Password",
              icon: Icons.lock,
              currentFocusNode: confirmPasswordFocusNode,
              isPassWord: true,
              keyboardType: TextInputType.visiblePassword,
            ),

            const SizedBox(height: 5),

            elevatedButton(
              'Confirm Changes',
              () {},
              MediaQuery.of(context).size.width - 70,
              45,
              Colors.white,
              backgroundColor: FinappColor.successColor,
            )
          ],
        ),
      ),
    );
  }
}
