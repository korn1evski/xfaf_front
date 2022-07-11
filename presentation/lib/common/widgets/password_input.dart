import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:chat/common/widgets/common_text.dart';
import 'package:chat/constants/app_constants.dart';
import 'package:chat/constants/resources/colors.dart';
import 'package:chat/constants/resources/validation_functions.dart';

class PasswordInput extends StatefulWidget {
  const PasswordInput(
      {Key? key,
      required this.controller,
      this.showError = false,
      this.onChange,
      this.labelText = 'Password',
      this.validationFunc = passValid,
      this.width = double.maxFinite})
      : super(key: key);
  final TextEditingController controller;
  final String? Function(String?) validationFunc;
  final Function(String?)? onChange;
  final bool showError;
  final String labelText;
  final double width;

  @override
  State<PasswordInput> createState() => _PasswordInputState();
}

class _PasswordInputState extends State<PasswordInput> {
  bool isHidden = true;

  void togglePasswordVisibility() => setState(() => isHidden = !isHidden);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
              color: AppColors.authInputColor,
              borderRadius: BorderRadius.circular(8.w),
              border: widget.showError ? Border.all(width: 1, color: AppColors.helpColorRed500) : null),
          margin: EdgeInsets.zero,
          height: 48.h,
          width: widget.width.w,
          child: Center(
            child: TextField(
              obscureText: isHidden,
              onChanged: widget.onChange,
              controller: widget.controller,
              decoration: InputDecoration(
                labelText: widget.labelText,
                labelStyle: TextStyle(
                  height: 1,
                  color: AppColors.labelColor,
                ),
                suffixIcon: Padding(
                  padding: EdgeInsets.only(right: 12.w),
                  child: GestureDetector(
                    child: isHidden ? AppAssets.eyeSlashIcon() : AppAssets.eyeIcon(),
                    onTap: togglePasswordVisibility,
                  ),
                ),
                suffixIconConstraints: BoxConstraints(
                  maxHeight: 17.h,
                  maxWidth: 48.w,
                ),
                isDense: true,
                contentPadding: EdgeInsets.only(
                  bottom: 8.h,
                  left: 16.w,
                  top: 10.h,
                ),
                enabledBorder: const OutlineInputBorder(borderSide: BorderSide.none),
                border: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.circular(6)),
                focusedBorder: const OutlineInputBorder(borderSide: BorderSide.none),
              ),
              keyboardType: TextInputType.visiblePassword,
              autofillHints: [AutofillHints.password],
              style: TextStyle(fontSize: 14, height: 1, color: AppColors.mainTextColor),
            ),
          ),
        ),
        SizedBox(
            height: 20,
            child: widget.showError
                ? CommonText(
                    text: widget.validationFunc(widget.controller.text) ?? '',
                    size: 12,
                    color: AppColors.helpColorRed600,
                    lineHeight: 1.33,
                  )
                : null)
      ],
    );
  }
}
