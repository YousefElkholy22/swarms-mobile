import 'dart:developer';

import 'package:evnto/core/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/styles/app_fonts.dart';

import 'package:syncfusion_flutter_calendar/calendar.dart';

import 'components/calendar_events_bottom_sheet.dart';

class CalendarPage extends StatelessWidget {
  const CalendarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
          child: SfCalendar(
            view: CalendarView.month,
            initialDisplayDate: DateTime.now(),
            headerStyle: CalendarHeaderStyle(
              textStyle: AppFonts.black20Bold,
              backgroundColor: Colors.white,
            ),
            headerHeight: 60.h,
            minDate: DateTime(2022),
            maxDate: DateTime(2060),
            monthViewSettings: const MonthViewSettings(
              appointmentDisplayMode: MonthAppointmentDisplayMode.appointment,
            ),
            dataSource: _getDataSource(),
            onTap: (details) => _onTap(context, details),
          ),
        ),
      ),
    );
  }

  _AppointmentDataSource _getDataSource() {
    final List<Appointment> appointments = <Appointment>[];
    final DateTime today = DateTime.now();
    final DateTime eventTime = DateTime(today.year, today.month, today.day + 2);
    appointments.add(
      Appointment(
        startTime: eventTime,
        endTime: eventTime,
        subject: 'IEEE',
        color: AppColors.blue,
        isAllDay: true,
      ),
    );
    return _AppointmentDataSource(appointments);
  }

  void _onTap(BuildContext context, CalendarTapDetails details) {
    if (_checkIfAnyEventExists(details)) {
      log("show bottom sheet");
      showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (context) {
          return const CalendarEventsBottomSheet();
        },
      );
    }
  }

  bool _checkIfAnyEventExists(CalendarTapDetails details) {
    final appointments = details.appointments;
    bool isThereAppointments = false;
    for (var appointment in appointments ?? []) {
      if (appointment.startTime == details.date) {
        isThereAppointments = true;
        break;
      }
    }
    return details.targetElement == CalendarElement.calendarCell &&
        isThereAppointments;
  }
}

class _AppointmentDataSource extends CalendarDataSource<Appointment> {
  _AppointmentDataSource(List<Appointment> source) {
    appointments = source;
  }
}
