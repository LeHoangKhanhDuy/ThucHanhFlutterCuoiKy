import 'package:flutter/material.dart';

class EditItemProfile extends StatelessWidget {
  const EditItemProfile({
    super.key,
    required this.widget,
    required this.title,
  });
  final Widget widget;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 2,
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.grey,
            ),
          ),
        ),
        const SizedBox(
          width: 30,
        ),
        Expanded(flex: 5, child: widget),
      ],
    );
  }
}
