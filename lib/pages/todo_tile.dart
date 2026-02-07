import 'package:flutter/material.dart';

class TodoTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  final Function(bool?)? onChanged;

  TodoTile({
    super.key,
    required this.taskName,
    required this.taskCompleted,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 26, right: 16, left: 16),
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Checkbox(
                value: taskCompleted,
                onChanged: onChanged,
                activeColor: Colors.deepPurple,
              ),
              Text(taskName, style: TextStyle(color: Color(0xFFCDD6F4))),
            ],
          ),
        ),
        decoration: BoxDecoration(
          color: Color(0xFF181825),
          borderRadius: BorderRadius.circular(13),
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
