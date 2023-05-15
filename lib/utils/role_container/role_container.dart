// import 'package:flutter/material.dart';

// import '../../constants/colors_constant.dart';
// import '../dimension/math_utils.dart';

// class RoleContainer extends StatefulWidget {
//   const RoleContainer({super.key, this.imageUrl, this.title, this.subtitle});
//   final String? imageUrl;
//   final String? title;
//   final String? subtitle;

//   @override
//   State<RoleContainer> createState() => _RoleContainerState();
// }

// class _RoleContainerState extends State<RoleContainer> {
//   int _selected = 0;
//   bool isSelected = false;
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: getPadding(bottom: getVerticalSize(16)),
//       child: Container(
//         height: getVerticalSize(90),
//         width: double.maxFinite,
//         decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(10),
//             border: Border.all(width: 1, color: ColorsConstant.grey)),
//         child: ListTile(
//           leading: CircleAvatar(
//             radius: 40,
//             child: Image.asset(widget.imageUrl!),
//           ),
//           title: Text(widget.title!),
//           subtitle: Text(widget.subtitle!),
//           trailing: Radio(
//               activeColor: ColorsConstant.grey,
//               value: 0,
//               groupValue: _selected,
//               onChanged: (value) {
//                 setState(() {
//                   _selected = value!;
//                 });
//               }),
//         ),
//       ),
//     );
//   }
// }
