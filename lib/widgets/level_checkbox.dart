import 'package:flutter/material.dart';
import 'package:swimwarrior/utils/colors.dart';

class LevelCheckbox extends StatefulWidget {
  const LevelCheckbox({super.key});

  @override
  State<LevelCheckbox> createState() => _LevelCheckboxState();
}

class _LevelCheckboxState extends State<LevelCheckbox> {
  bool copperVal = false;
  bool silverVal = false;
  bool platinumVal = false;
  bool challengerVal = false;
  bool bronzeVal = false;
  bool goldVal = false;
  bool diamondVal = false;
  bool masterVal = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Wrap(
            spacing: 2,
            runSpacing: 1,
            children: [
              CheckboxListTile(
                activeColor: blue,
                contentPadding: EdgeInsets.zero,
                title: const Text(
                  "Copper",
                  style: TextStyle(color: Colors.white),
                ),
                value: copperVal,
                onChanged: (newValue) {
                  setState(() {
                    copperVal = newValue ?? !copperVal;
                  });
                },
                controlAffinity: ListTileControlAffinity.leading,
              ),
              CheckboxListTile(
                activeColor: blue,
                contentPadding: EdgeInsets.zero,
                title: const Text(
                  "Silver",
                  style: TextStyle(color: Colors.white),
                ),
                value: silverVal,
                onChanged: (newValue) {
                  setState(() {
                    silverVal = newValue ?? !silverVal;
                  });
                },
                controlAffinity: ListTileControlAffinity.leading,
              ),
              CheckboxListTile(
                activeColor: blue,
                contentPadding: EdgeInsets.zero,
                title: const Text(
                  "Platinum",
                  style: TextStyle(color: Colors.white),
                ),
                value: platinumVal,
                onChanged: (newValue) {
                  setState(() {
                    platinumVal = newValue ?? !platinumVal;
                  });
                },
                controlAffinity: ListTileControlAffinity.leading,
              ),
              CheckboxListTile(
                activeColor: blue,
                contentPadding: EdgeInsets.zero,
                title: const Text(
                  "Challenger",
                  style: TextStyle(color: Colors.white),
                ),
                value: challengerVal,
                onChanged: (newValue) {
                  setState(() {
                    challengerVal = newValue ?? !challengerVal;
                  });
                },
                controlAffinity: ListTileControlAffinity.leading,
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 55,
        ),
        Expanded(
          child: Column(
            children: [
              CheckboxListTile(
                activeColor: blue,
                contentPadding: EdgeInsets.zero,
                title: const Text(
                  "Bronze",
                  style: TextStyle(color: Colors.white),
                ),
                value: bronzeVal,
                onChanged: (newValue) {
                  setState(() {
                    bronzeVal = newValue ?? !bronzeVal;
                  });
                },
                controlAffinity: ListTileControlAffinity.leading,
              ),
              CheckboxListTile(
                activeColor: blue,
                contentPadding: EdgeInsets.zero,
                title: const Text(
                  "Gold",
                  style: TextStyle(color: Colors.white),
                ),
                value: goldVal,
                onChanged: (newValue) {
                  setState(() {
                    goldVal = newValue ?? !goldVal;
                  });
                },
                controlAffinity: ListTileControlAffinity.leading,
              ),
              CheckboxListTile(
                activeColor: blue,
                contentPadding: EdgeInsets.zero,
                title: const Text(
                  "Diamond",
                  style: TextStyle(color: Colors.white),
                ),
                value: diamondVal,
                onChanged: (newValue) {
                  setState(() {
                    diamondVal = newValue ?? !diamondVal;
                  });
                },
                controlAffinity: ListTileControlAffinity.leading,
              ),
              CheckboxListTile(
                activeColor: blue,
                contentPadding: EdgeInsets.zero,
                title: const Text(
                  "Master",
                  style: TextStyle(color: Colors.white),
                ),
                value: masterVal,
                onChanged: (newValue) {
                  setState(() {
                    masterVal = newValue ?? !masterVal;
                  });
                },
                controlAffinity: ListTileControlAffinity.leading,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
