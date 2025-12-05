import 'package:flutter/material.dart';
import 'package:flutter_application_4/list_tasks.dart';

class CardTaskItem extends StatefulWidget {
  final Task newtask;
  final void Function() onremove;
  const CardTaskItem({
    super.key,
    required this.newtask,
    required this.onremove,
  });

  @override
  State<CardTaskItem> createState() => _CardTaskItemState();
}

class _CardTaskItemState extends State<CardTaskItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Card(
        color: Color(0xffffeff5f3),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            leading: IconButton(
              icon: widget.newtask.isCompleted
                  ? Icon(
                      Icons.check_box,
                      color: Color(0xffff046c63),
                      size: 27,
                    )
                  : Icon(
                      Icons.check_box_outline_blank,
                      color: Colors.grey,
                      size: 27,
                    ),
              onPressed: () {
                setState(() {
                  if (widget.newtask.isCompleted == false) {
                    widget.newtask.isCompleted = true;
                  } else {
                    widget.newtask.isCompleted = false;
                  }
                });
              },
            ),
            title: Text(
              widget.newtask.title,
              style: TextStyle(
                decoration: widget.newtask.isCompleted
                    ? TextDecoration.lineThrough
                    : TextDecoration.none,
                fontSize: 20,
                color: widget.newtask.isCompleted ? Colors.grey : Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              'Created: ${widget.newtask.printDateTask(widget.newtask.date)}',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[600],
              ),
            ),
            trailing: IconButton(
              icon: Icon(
                Icons.delete_outlined,
                color: Colors.red,
                size: 24,
              ),
              onPressed: () {
                widget.onremove();
              },
            ),
          ),
        ),
      ),
    );
  }
}
