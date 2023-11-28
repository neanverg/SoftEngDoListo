import 'bloc/calendar_bloc.dart';
import 'models/calendar_model.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:nean_verg_s_application2/core/app_export.dart';
import 'package:nean_verg_s_application2/widgets/app_bar/custom_app_bar.dart';

class CalendarScreen extends StatelessWidget {
  const CalendarScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<CalendarBloc>(
      create: (context) => CalendarBloc(CalendarState(
        calendarModelObj: CalendarModel(),
      ))
        ..add(CalendarInitialEvent()),
      child: CalendarScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<CalendarBloc, CalendarState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: CustomAppBar(
              // ... your existing app bar code
            ),
            body: Column(
              children: [
                TableCalendar(
                  focusedDay: DateTime.now(), // Provide the focused day
                  firstDay: DateTime.utc(2022, 1, 1),
                  lastDay: DateTime.utc(2022, 12, 31),
                  calendarFormat: CalendarFormat.month,
                  headerStyle: HeaderStyle(
                    formatButtonVisible: false,
                  ),
                  calendarStyle: CalendarStyle(
                    weekendTextStyle: TextStyle(color: Colors.blue),
                    todayDecoration: BoxDecoration(
                      color: Colors.redAccent,
                      shape: BoxShape.circle,
                    ),
                  ),
                  daysOfWeekStyle: DaysOfWeekStyle(
                    weekendStyle: TextStyle(color: Colors.blue),
                  ),
                  // Add event handlers if needed
                 onDaySelected: (DateTime selectedDay, DateTime focusedDay) {
                // Handle day selected
                  },
                  onPageChanged: (focusedDay) {
                    // Handle page change
                  },
                ),
                SizedBox(height: 50.v),
                Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(
                    horizontal: 30.h,
                    vertical: 25.v,
                  ),
                  decoration: AppDecoration.fillGray800.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder25,
                  ),
                  child: Text(
                    "lbl_today".tr,
                    style: CustomTextStyles.titleLargeWhiteA700,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
