import 'package:flutter/material.dart';
import 'package:switcher_button/switcher_button.dart';

class SelectionToggle extends StatefulWidget {
  final void Function(bool value) onToggleChanged;
  const SelectionToggle({super.key, required this.onToggleChanged});

  @override
  State<SelectionToggle> createState() => _SelectionToggleState();
}

class _SelectionToggleState extends State<SelectionToggle> {
  bool toggleValue = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          //animation for heading changing
          AnimatedSwitcher(
            duration: Duration(milliseconds: 300),
            child: Text(
              'Selection ${toggleValue ? 'Enabled' : 'Disabled'}',
              key: ValueKey<bool>(toggleValue),
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ),

          SwitcherButton(
            value: toggleValue,
            onChange: (value) {
              setState(() {
                toggleValue = value;
              });
              widget.onToggleChanged(value);
            },
          ),
        ]));
  }
}
