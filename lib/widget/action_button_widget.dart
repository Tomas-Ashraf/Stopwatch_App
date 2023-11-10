// import 'package:flutter/material.dart';
// import 'package:stop_watch_app/widget/custom_button_widget.dart';
// import 'package:stop_watch_app/widget/timer_panel_widget.dart';

// class ActionButtonWidget extends StatefulWidget {
//   const ActionButtonWidget({super.key});

//   @override
//   State<ActionButtonWidget> createState() => _ActionButtonWidgetState();
// }

// class _ActionButtonWidgetState extends State<ActionButtonWidget> {

//   @override
//   Widget build(BuildContext context) {
//     return isRunning
//         ? Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               CustomButtonWidget(onPressed: () {}, buttonText: 'STOP'),
//               const SizedBox(
//                 width: 12,
//               ),
//               CustomButtonWidget(
//                   onPressed: () {
//                     setState(() {
//                       isRunning = !isRunning;
//                     });
//                   },
//                   buttonText: 'CANCEL')
//             ],
//           )
//         : CustomButtonWidget(
//             onPressed: () {
//               setState(() {
//                 isRunning = !isRunning;
//                 TimerPanelWidget.StartTimer;
//                 print('object');
//               });
//             },
//             buttonText: 'START');
//   }
// }

//    bool isRunning = false;
//  ActionButtonWidget(){
//    return isRunning
//         ? Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               CustomButtonWidget(onPressed: () {}, buttonText: 'STOP'),
//               const SizedBox(
//                 width: 12,
//               ),
//               CustomButtonWidget(
//                   onPressed: () {
//                     setState(() {
//                       isRunning = !isRunning;
//                     });
//                   },
//                   buttonText: 'CANCEL')
//             ],
//           )
//         : CustomButtonWidget(
//             onPressed: () {
//               setState(() {
//                 isRunning = !isRunning;
                
//                 print('object');
//               });
//             },
//             buttonText: 'START');
// }
