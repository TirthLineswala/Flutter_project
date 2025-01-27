import 'package:flutter/material.dart';
class tasktile extends StatefulWidget {

  static const String id = 'task_tile';

  final bool ischecked;
  final String tasktitle;
  final Function CheckboxCallback;
  final Function DeleteCallback;  // Add DeleteCallback

  tasktile({
    required this.ischecked,
    required this.tasktitle,
    required this.CheckboxCallback,
    required this.DeleteCallback,  // Add DeleteCallback parameter
  });

  @override
  State<tasktile> createState() => _tasktileState();
}

class _tasktileState extends State<tasktile> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListTile(
        title: Text(
          widget.tasktitle,
          style: TextStyle(
            decoration: widget.ischecked ? TextDecoration.lineThrough : null,
          ),
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Checkbox
            Checkbox(
              activeColor: Colors.lightGreen,
              value: widget.ischecked,
              onChanged: (newvalue) {
                widget.CheckboxCallback(newvalue);
              },
            ),
            // Delete Button
            IconButton(
              icon: Icon(Icons.delete),
              color: Colors.red,
              onPressed: () {
                widget.DeleteCallback();  // Call the delete function when pressed
              },
            ),
          ],
        ),
      ),
    );
  }
}
