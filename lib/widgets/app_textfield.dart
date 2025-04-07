import 'package:credpal_test/constants/app_style.dart';
import 'package:credpal_test/constants/colors.dart';
import 'package:credpal_test/constants/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppTextField extends StatelessWidget {
  final bool? autofocus;
  final bool? readOnly;
  final AutovalidateMode? autovalidateMode;
  final String? Function(String?)? validator;
  final double borderRadius;
  final TextInputType? keyboardType;
  final String? hintText;
  final ValueSetter<String>? onChanged;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final bool obscureText;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final ValueSetter<String>? onFieldSubmitted;
  final bool hasBorder;
  final Color? fillColor;
  final int? maxLines;
  final bool? enabled;
  final String? title;
  final String? extra;
  final Color? enabledBorderColor;
  final Color? focusedBorderColor;
  final VoidCallback? onTap;
  final double contentPadding;
  final String? initialValue;
  final TextStyle? style;
  final TextStyle? hintStyle;
  final TextStyle? titleStyle;
  final TextStyle? extraStyle;
  final int? maxLength;
  final bool reserveErrorSpace;
  final List<TextInputFormatter>? inputFormatters;
  final TextAlign textAlign;

  const AppTextField({
    super.key,
    this.autofocus,
    this.readOnly,
    this.autovalidateMode,
    this.validator,
    this.borderRadius = Dimensions.borderRadius2,
    this.keyboardType,
    this.hintText,
    this.onChanged,
    this.suffixIcon,
    this.prefixIcon,
    this.obscureText = false,
    this.controller,
    this.focusNode,
    this.onFieldSubmitted,
    this.hasBorder = true,
    this.fillColor = Colors.transparent,
    this.maxLines = 1,
    this.enabled,
    this.title,
    this.onTap,
    this.contentPadding = 20,
    this.initialValue,
    this.style,
    this.hintStyle,
    this.maxLength,
    this.reserveErrorSpace = false,
    this.inputFormatters,
    this.textAlign = TextAlign.start,
    this.enabledBorderColor,
    this.focusedBorderColor,
    this.titleStyle,
    this.extraStyle,
    this.extra,
  }) : assert(title != null || extra == null, 'Cannot provide extra without a title');

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: !reserveErrorSpace ? 0.0 : Dimensions.space1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          title != null
              ? Padding(
                  padding: const EdgeInsets.only(bottom: 4.0),
                  child: LayoutBuilder(builder: (context, constraints) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: extra == null ? constraints.maxWidth : constraints.maxWidth / 2 - 4,
                          child: Text(
                            title!,
                            style: titleStyle ?? TextStyles.bodyLarge.bold,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        if (extra != null)
                          SizedBox(
                            width: extra == null ? constraints.maxWidth : constraints.maxWidth / 2 - 4,
                            child: Text(
                              extra!,
                              style: extraStyle ?? TextStyles.bodyLarge,
                              maxLines: 2,
                              textAlign: TextAlign.right,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                      ],
                    );
                  }),
                )
              : Container(),
          ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: !reserveErrorSpace ? 0.0 : 70.0,
            ),
            child: TextFormField(
              textAlign: textAlign,
              inputFormatters: inputFormatters,
              maxLength: maxLength,
              autofocus: autofocus ?? false,
              readOnly: readOnly ?? false,
              style: style ?? TextStyles.bodyLarge,
              initialValue: initialValue,
              controller: controller,
              focusNode: focusNode,
              keyboardType: keyboardType,
              autovalidateMode: autovalidateMode ?? AutovalidateMode.disabled,
              validator: validator ?? (value) => value != null && value.isEmpty ? 'Field can\'t be empty' : null,
              obscureText: obscureText,
              onFieldSubmitted: onFieldSubmitted,
              onTap: onTap,
              maxLines: maxLines,
              enabled: enabled,
              decoration: InputDecoration(
                labelStyle: style,
                counterText: '',
                counterStyle: TextStyles.hidden,
                focusedBorder: hasBorder
                    ? OutlineInputBorder(
                        borderRadius: BorderRadius.circular(borderRadius),
                        borderSide: BorderSide(
                          width: 1,
                          color: focusedBorderColor ?? AppColor.primary,
                        ),
                      )
                    : InputBorder.none,
                border: hasBorder
                    ? OutlineInputBorder(
                        borderRadius: BorderRadius.circular(borderRadius),
                        borderSide: const BorderSide(width: 1, color: AppColor.cloudyGrey),
                      )
                    : OutlineInputBorder(
                        borderRadius: BorderRadius.circular(borderRadius),
                        borderSide: BorderSide.none,
                      ),
                errorBorder: hasBorder
                    ? OutlineInputBorder(
                        borderRadius: BorderRadius.circular(borderRadius),
                        borderSide: const BorderSide(
                          color: AppColor.accent,
                          width: 1,
                        ),
                      )
                    : InputBorder.none,
                focusedErrorBorder: hasBorder
                    ? OutlineInputBorder(
                        borderRadius: BorderRadius.circular(borderRadius),
                        borderSide: const BorderSide(
                          color: AppColor.accent,
                          width: 1,
                        ),
                      )
                    : InputBorder.none,
                enabledBorder: hasBorder
                    ? OutlineInputBorder(
                        borderRadius: BorderRadius.circular(borderRadius),
                        borderSide: BorderSide(
                          color: enabledBorderColor ?? AppColor.cloudyGrey,
                          width: 1,
                        ),
                      )
                    : InputBorder.none,
                isDense: true,
                fillColor: fillColor ?? Colors.white,
                filled: true,
                contentPadding: EdgeInsets.all(
                  contentPadding,
                ),
                hintText: hintText,
                hintStyle: hintStyle ?? TextStyles.small.apply(color: AppColor.coolGrey),
                suffixIcon: suffixIcon != null
                    ? Padding(
                        padding: const EdgeInsets.only(right: Dimensions.space1),
                        child: UnconstrainedBox(
                          alignment: Alignment.center,
                          child: suffixIcon,
                        ),
                      )
                    : null,
                prefixIcon: prefixIcon != null
                    ? Padding(
                        padding: const EdgeInsets.only(left: Dimensions.space1),
                        child: UnconstrainedBox(
                          alignment: Alignment.center,
                          child: prefixIcon,
                        ),
                      )
                    : null,
              ),
              onChanged: onChanged,
            ),
          ),
        ],
      ),
    );
  }
}
