// import 'package:flutter/material.dart';
// // import 'package:intl/intl.dart';
// import 'package:quran_project/constant/color_constant.dart';
// import 'package:quran_project/constant/size_constant.dart';
// import 'package:quran_project/view/widgets/custom_App_bar.dart';
// // import 'package:table_calendar/table_calendar.dart';
//
// class TodoView extends StatelessWidget {
//   const TodoView({Key? key}) : super(key: key);
// static const String   id = 'todo view';
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: customAppBar(context, 'اليوميات'),
//       body: const TodoViewBody( ),
//     );
//   }
// }
// class TodoViewBody extends StatefulWidget {
//   const TodoViewBody({Key? key}) : super(key: key);
//
//   @override
//   State<TodoViewBody> createState() => _TodoViewBodyState();
// }
//
// class _TodoViewBodyState extends State<TodoViewBody> {
//   DateTime _selectedDay =DateTime.now();
//   DateTime _focusedDay =DateTime.now();
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         TableCalendar(
//           calendarStyle: CalendarStyle(
//             tablePadding: EdgeInsets.symmetric(
//                 vertical: returnHeightMediaQuery(ctx: context, size: 0),
//                 horizontal:returnWidthMediaQuery(ctx: context, size: 0.05)
//             ),
//             cellMargin: EdgeInsets.all(10),
//             // defaultDecoration: BoxDecoration(
//             //   border: Border.all(color: Colors.grey),
//             // ),
//             cellAlignment: Alignment.center,
//     //         weekendDecoration:BoxDecoration(
//     // border: Border.all(color: Colors.grey),
//     // ) ,
//             defaultTextStyle: const TextStyle (
//               color: Colors.black,
//               fontWeight: FontWeight.bold
//             ),
//             // markerDecoration: BoxDecoration(
//             //   color: Colors.red
//             // ),
//             //   holidayDecoration: BoxDecoration(
//             //     color: Colors.red
//             //   ),
//             //   cellPadding: EdgeInsets.all(20),
//             //   markerSizeScale: 50,
//               weekNumberTextStyle: TextStyle (
//                 color: Colors.black,
//                 fontWeight: FontWeight.bold
//               ),
//             // markersAutoAligned: false,
//               todayTextStyle: TextStyle(
//                 color: Colors.white
//               ),
//
//             tableBorder: TableBorder.all(color: Colors.grey,
//             borderRadius: BorderRadius.circular(10)
//             ),
//             weekendTextStyle: const TextStyle(
//               color: Colors.black,
//               fontWeight: FontWeight.bold,
//             ),
//
//             isTodayHighlighted: true,
//           outsideDaysVisible: true,
//               outsideTextStyle: TextStyle(
//               color: Colors.white
//             ),
//             outsideDecoration: BoxDecoration(
//               color: AppColorsConstant.primaryColor,
//             ),
//             canMarkersOverflow: false,
//
//
//
//           ),
//            locale: 'ar_AS',
//           pageAnimationDuration: Duration(seconds: 1),
//      pageAnimationEnabled: true,
//
//           daysOfWeekStyle: DaysOfWeekStyle (
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(10) ,
//                   topRight: Radius.circular(10) ,
//
//               ),
//               color: AppColorsConstant.primaryColor
//             ),
//             weekdayStyle: TextStyle(
//               color: Colors.white
//             ),
//               weekendStyle:TextStyle(
//                 color: Colors.white
//               )
//           ),
//           headerVisible: true, //to not visible header
//           calendarFormat: CalendarFormat.week, // to show  only 7 days
//
//           daysOfWeekHeight: returnHeightMediaQuery(ctx: context, size: 0.07),
//
//           rowHeight:returnHeightMediaQuery(ctx: context, size: 0.1),
//
//           focusedDay: _focusedDay,
//           firstDay: DateTime.now().subtract(const Duration(days: 365)),
//           lastDay: DateTime.now().add(const Duration(days: 365)),
//           selectedDayPredicate: (day) {
//             return isSameDay(_selectedDay, day);
//           },
//           onDaySelected: (selectedDay, focusedDay) {
//             setState(() {
//               _selectedDay = selectedDay;
//               _focusedDay = focusedDay; // update `_focusedDay` here as well
//             });
//           },
//         ),
//         SizedBox(
//           height: returnHeightMediaQuery(ctx: context, size: 0.05),
//         ),
//         Expanded(
//           child: ListView.builder(itemBuilder: (ctx,index){
//             return CustomTodoItem();
//           },
//           itemCount: 5,
//           ),
//         )
//       ],
//     );
//   }
// }
// class CustomTodoItem extends StatelessWidget {
//   const CustomTodoItem({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return     Container(
//       padding: EdgeInsets.symmetric(
//           horizontal: returnWidthMediaQuery(ctx: context
//               , size: 0.07),
//           vertical: returnHeightMediaQuery(ctx: context, size: 0.02)
//       ),
//       decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(10),
//           border: Border.all(color: Colors.grey)
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Column(
//             children: [
//               Text('صلاة المغرب' ),
//               Text( '12:00' ),
//             ],
//           ),
//           const CircleAvatar()
//         ],
//       ),
//     );
//   }
// }
//
