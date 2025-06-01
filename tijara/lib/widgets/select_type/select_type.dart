import 'package:flutter/material.dart';
import 'package:tijara/constants.dart';

class SelectType extends StatefulWidget {
  final List<SelectTypeItem> items;
  final Function(int index) onItemSelected;
  final int selectedIndex;

  const SelectType({
    super.key,
    required this.items,
    required this.onItemSelected,
    required this.selectedIndex,
  });

  @override
  State<SelectType> createState() => _SelectTypeState();
}

class _SelectTypeState extends State<SelectType> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: widget.items.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4, 
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        childAspectRatio: 1,
      ),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        final isSelected = widget.selectedIndex == index;
        final item = widget.items[index];
        return GestureDetector(
          onTap: () {
            widget.onItemSelected(index);
          },
          child: Container(
            decoration: BoxDecoration(
              color: isSelected ? blueColor : whiteColor,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: isSelected ? Colors.blue : greyColor,
                width: isSelected ? 1 : 0,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(item.icon, color: isSelected ? Colors.white : Colors.black),
                const SizedBox(height: 8),
                Text(
                  item.title,
                  style: TextStyle(
                    color: isSelected ? Colors.white : Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class SelectTypeItem {
  final String title;
  final IconData icon;

  SelectTypeItem({
    required this.title,
    required this.icon,
  });
}
