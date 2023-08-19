import 'package:flutter/material.dart';

class LevelCheckbox extends StatefulWidget {
  const LevelCheckbox({super.key});

  @override
  State<LevelCheckbox> createState() => _LevelCheckboxState();
}

class _LevelCheckboxState extends State<LevelCheckbox> {
  bool is_checked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Expanded(
              child: CheckboxListTile(
                title: const Text('Copper'),
                value: is_checked,
                onChanged: (val) {
                  setState(() {
                    is_checked = val!;
                  });
                },
                controlAffinity: ListTileControlAffinity.leading,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
