// import 'package:flutter/material.dart';
// // import 'package:training_getx/page/login/login_view.dart';

// class SelectedLanguage extends StatefulWidget {
//   const SelectedLanguage({ Key? key }) : super(key: key);

//   @override
//   State<SelectedLanguage> createState() => _SelectedLanguageState();
// }

// class _SelectedLanguageState extends State<SelectedLanguage> {
//   String defaultLang = langList.first;
//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }


// DropdownButton(
//                         value: langList.first,
//                         items: langList
//                             .map<DropdownMenuItem<String>>(
//                                 (String value) => DropdownMenuItem<String>(
//                                       child: Text(value),
//                                     ))
//                             .toList(),
//                         onChanged: (String? value) => value,
//                       ),