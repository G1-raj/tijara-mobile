import 'package:flutter/material.dart';

class ChoiceSelector extends StatelessWidget {
  final String title;
  final List<String> choices;
  final String selectedChoice;
  final ValueChanged<String> onChanged;

  const ChoiceSelector({
    super.key,
    required this.title,
    required this.choices,
    required this.selectedChoice,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
          ),
          const SizedBox(height: 10),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: choices.map((choice) {
              final isSelected = choice == selectedChoice;
              return ChoiceChip(
                label: Text(choice),
                selected: isSelected,
                onSelected: (_) => onChanged(choice),
                selectedColor: Theme.of(context).colorScheme.primary,
                backgroundColor: Colors.grey[200],
                labelStyle: TextStyle(
                  color: isSelected ? Colors.white : Colors.black,
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
