import 'package:flutter/material.dart';
import 'basic_widget/input_selection_widget.dart';
import 'basic_widget/dialog_widget.dart';
import 'basic_widget/date_time_pickers.dart';
import 'basic_widget/scaffold_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Row(
        children: [
          Expanded(child: MyInputSelectionWidget()),  //langkah 5
          Expanded(child: MyDialogWidget()),  //langkah 4
          Expanded(child: MyDateTimePicker()),  //langkah 6
          Expanded(child: MyScaffoldWidget()), //langkah 3
          ],
      ),
    );
  }
}