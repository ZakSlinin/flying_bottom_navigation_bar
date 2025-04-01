import 'package:flutter/material.dart';
import 'package:flying_bottom_navigation_bar/navigation_bar_item/view/navigation_item_builder.dart';

class FlyingNavigationBar extends StatelessWidget {
  final int selectedPageIndex;
  final Function(int) onTap;
  final Color backgroundColor;
  final double borderRadius;
  final List<NavItem> navItems;

  const FlyingNavigationBar({
    super.key,
    required this.onTap,
    required this.selectedPageIndex,
    required this.backgroundColor,
    required this.borderRadius,
    required this.navItems,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: 20,
          right: 20,
          bottom: 50,
          height: 101,
          child: Container(
            height: 80,
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(borderRadius),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 10,
                  spreadRadius: 2,
                ),
              ],
            ),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children:
                  navItems.map((item) {
                    return NavItem(
                      icon: item.icon,
                      index: item.index,
                      size: item.size,
                      label: item.label,
                      selectedPageIndex: selectedPageIndex,
                      onTap: onTap,
                    );
                  }).toList(),
            ),
          ),
        ),
      ],
    );
  }
}
