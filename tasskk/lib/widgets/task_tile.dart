import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkboxCallback;
  final Function deleteCallback;  // Updated callback for delete

  TaskTile({
    required this.isChecked,
    required this.taskTitle,
    required this.checkboxCallback,
    required this.deleteCallback, // Pass the delete callback
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,  // Adjust to keep icons compact
        children: <Widget>[
          Checkbox(
            activeColor: Colors.lightBlueAccent,
            value: isChecked,
            onChanged: (newValue) {
              checkboxCallback(newValue);
            },
          ),
          IconButton(
            icon: Icon(Icons.delete),
            color: Colors.redAccent,
            onPressed: () {
              deleteCallback();  // Call delete function when pressed
            },
          ),
        ],
      ),
    );
  }
}
