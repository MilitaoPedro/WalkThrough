import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class ProfessorPage extends StatefulWidget {
  const ProfessorPage({Key? key}) : super(key: key);

  @override
  State<ProfessorPage> createState() => _ProfessorPageState();
}

class _ProfessorPageState extends State<ProfessorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TableCalendar(
          firstDay: DateTime.utc(2010, 10, 16),
          lastDay: DateTime.utc(2030, 3, 14),
          focusedDay: DateTime.now(),
        )
      ),
    );
  }
}