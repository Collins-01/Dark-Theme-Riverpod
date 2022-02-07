// import 'package:dark_theme_riverpod/main.dart';
// import 'package:dark_theme_riverpod/notifiers/app_theme_notifier.dart';
// import 'package:flutter/material.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';

// import '../constants/text_styles.dart';
// import '../views/home_view.dart';

// class AppText extends ConsumerStatefulWidget {
//   final appThemeStateNotifier =
//       ChangeNotifierProvider((ref) => AppThemeNotifier());

//   final String text;
//   final TextStyle style;
//   final Color? color;

//   AppText.heading1(this.text, {Key? key, this.color})
//       : style = heading1Style,
//         super(key: key);

//   AppText.heading2(this.text, {Key? key, this.color})
//       : style = heading2Style,
//         super(key: key);
//   // ignore: use_key_in_widget_constructors
//   AppText.heading3(this.text, {this.color}) : style = heading3Style;

//   AppText.heading4(this.text, {Key? key, this.color})
//       : style = heading4Style.copyWith(color: color),
//         super(key: key);

//   AppText.heading5(this.text, {Key? key, this.color})
//       : style = heading5Style.copyWith(color: color),
//         super(key: key);

//   AppText.heading6(this.text, {Key? key, this.color})
//       : style = heading6Style.copyWith(color: color),
//         super(key: key);

//   AppText.button(this.text,
//       {Key? key,
//       this.color,
//       FontWeight? fontWeight,
//       TextDecoration? decoration})
//       : style = buttonStyle.copyWith(
//             color: color, fontWeight: fontWeight, decoration: decoration),
//         super(key: key);

//   AppText.body(this.text, {Key? key, this.color})
//       : style = bodyStyle.copyWith(color: color),
//         super(key: key);

//   AppText.body2(this.text, {Key? key, this.color})
//       : style = body2Style.copyWith(color: color),
//         super(key: key);

//   AppText.body3(this.text, {Key? key, this.color})
//       : style = body3Style.copyWith(color: color),
//         super(key: key);

//   AppText.caption(this.text, {Key? key, this.color})
//       : style = captionStyle.copyWith(color: color),
//         super(key: key);

//   @override
//   _AppTextState createState() => _AppTextState();
// }

// class _AppTextState extends ConsumerState<AppText> {
//   Color get defaultColor => ref.watch(appThemeStateNotifier).isDarkModeEnabled
//       ? Colors.white
//       : Colors.black;

//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       widget.text,
//       style: widget.style.copyWith(color: widget.color ?? defaultColor),
//     );
//   }
// }

import 'package:dark_theme_riverpod/constants/text_styles.dart';
import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  final String text;
  final TextStyle style;

  const AppText.heading1(this.text, {Key? key})
      : style = heading1Style,
        super(key: key);

  const AppText.heading2(this.text, {Key? key, color})
      : style = heading2Style,
        super(key: key);
  const AppText.heading3(this.text, {Key? key, color})
      : style = heading3Style,
        super(key: key);

  AppText.heading4(this.text, {Key? key, color})
      : style = heading4Style.copyWith(color: color),
        super(key: key);

  AppText.heading5(this.text, {Key? key, color})
      : style = heading5Style.copyWith(color: color),
        super(key: key);

  AppText.heading6(this.text, {Key? key, color})
      : style = heading6Style.copyWith(color: color),
        super(key: key);

  AppText.button(this.text,
      {Key? key, color, FontWeight? fontWeight, TextDecoration? decoration})
      : style = buttonStyle.copyWith(
            color: color, fontWeight: fontWeight, decoration: decoration),
        super(key: key);

  AppText.body(this.text, {Key? key, color})
      : style = bodyStyle.copyWith(color: color),
        super(key: key);

  AppText.body2(this.text, {Key? key, color})
      : style = body2Style.copyWith(color: color),
        super(key: key);

  AppText.body3(this.text, {Key? key, color})
      : style = body3Style.copyWith(color: color),
        super(key: key);

  AppText.caption(this.text, {Key? key, color})
      : style = captionStyle.copyWith(color: color),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style,
    );
  }
}
