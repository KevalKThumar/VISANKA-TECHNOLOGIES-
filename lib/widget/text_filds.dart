import '../index.dart';

class MyTextFormField extends StatelessWidget {
  const MyTextFormField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.lable,
    required this.icon,
    required this.currentFocusNode,
    this.nextFocusNode,
    this.isPassWord = false,
    this.textLength = 99999,
    required this.keyboardType,
  });

  final TextEditingController controller;
  final FocusNode currentFocusNode;
  final FocusNode? nextFocusNode;
  final int textLength;
  final String hintText;
  final String lable;
  final IconData icon;
  final bool isPassWord;
  final TextInputType keyboardType;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 4.0),
        child: TextFormField(
          maxLength: textLength,
          obscureText: isPassWord,
          keyboardType: keyboardType,
          controller: controller,
          focusNode: currentFocusNode,
          decoration: InputDecoration(
            counterText: "",
            focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(14),
              ),
              borderSide: BorderSide(
                color: FinappColor.textfieldBorderColor,
              ),
            ),
            enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(14),
              ),
              borderSide: BorderSide(
                color: FinappColor.textfieldBorderColor,
              ),
            ),
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(14),
              ),
              borderSide: BorderSide(
                color: FinappColor.textfieldBorderColor,
              ),
            ),
            labelText: lable,
            labelStyle:
                const TextStyle(color: FinappColor.textfieldBorderColor),
            hintText: hintText,
            prefixIcon: Icon(icon, color: FinappColor.textfieldBorderColor),
          ),
          cursorColor: FinappColor.textfieldBorderColor,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter some text';
            }
            return null;
          },
          onFieldSubmitted: (value) {
            currentFocusNode.unfocus();
            FocusScope.of(context).requestFocus(nextFocusNode);
          },
        ),
      ),
    );
  }
}
