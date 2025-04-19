import 'package:flutter/material.dart';

class TaskButton extends StatelessWidget {
  const TaskButton({
    super.key,
    required this.controller,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 16).copyWith(bottom: 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          const Icon(Icons.search_rounded),
          const SizedBox(width: 12),
          AnimatedBuilder(
            animation: controller,
            builder: (context, _) {
              return Text(
                controller.text.isEmpty ? 'Поиск пород собак' : controller.text,
              );
            },
          ),
        ],
      ),
    );
  }
}
