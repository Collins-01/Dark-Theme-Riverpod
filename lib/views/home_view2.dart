// import 'package:dark_theme_riverpod/services/theme_service.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';

// final _themeProvider = StateNotifierProvider<AppThemeNotifier2, bool>((ref) {
//   return AppThemeNotifier2();
// });

// class HomeView2 extends ConsumerWidget {
//   const HomeView2({Key? key}) : super(key: key);
//   // final bool _value = false;

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final _state = ref.watch(_themeProvider);
//     return Scaffold(
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           const Text("Switch"),
//           const SizedBox(
//             height: 20,
//           ),
//           Center(
//             child: CupertinoSwitch(
//               onChanged: (v) {
//                 if (_state) {
//                   ref.watch(_themeProvider.s);
//                 }
//               },
//               value: _state,
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
