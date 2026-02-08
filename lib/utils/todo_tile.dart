import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class TodoTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  final Function(bool?)? onChanged;
  final Function(BuildContext)? deleteFunction;

  TodoTile({
    super.key,
    required this.taskName,
    required this.taskCompleted,
    required this.onChanged,
    required this.deleteFunction,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 26, right: 16, left: 16),
      child: Slidable(
        endActionPane: ActionPane(
          motion: const StretchMotion(),
          children: [
            SlidableAction(
              onPressed: deleteFunction,
              icon: Icons.delete,
              backgroundColor: Colors.redAccent,
              borderRadius: BorderRadius.circular(15),
            ),
          ],
        ),
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Row(
              children: [
                Checkbox(
                  value: taskCompleted,
                  onChanged: onChanged,
                  activeColor: Colors.deepPurple,
                ),
                Text(
                  taskName,
                  style: TextStyle(
                    color: taskCompleted
                        ? const Color(0xFF8E8E93)
                        : const Color(0xFFEAEAEA),

                    decoration: taskCompleted
                        ? TextDecoration.lineThrough
                        : TextDecoration.none,

                    decorationThickness: 2.5, // jangan kecil
                    decorationColor: const Color(
                      0xFFBB86FC,
                    ), // JANGAN transparan
                    decorationStyle: TextDecorationStyle.solid,
                  ),
                ),
              ],
            ),
          ),
          decoration: BoxDecoration(
            color: Color(0xFF181825),
            borderRadius: BorderRadius.circular(13),
          ),
        ),
      ),
    );
  }
}

class AppColors {
  static const Color background = Color(0xFF11111B);
  static const Color surface = Color(0xFF181825);
  static const Color appBar = Color(0xFF1E1E2E);
  static const Color accent = Color(0xFF89B4FA);
  static const Color textPrimary = Color(0xFFCDD6F4);
  static const Color textMuted = Color(0xFF7F849C);
  static const Color border = Color(0xFF313244);
}
