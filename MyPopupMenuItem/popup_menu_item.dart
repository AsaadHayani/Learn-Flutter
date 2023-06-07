import 'package:flutter/material.dart';

class MyPopupMenuItem<T> extends PopupMenuItem<T> {
  final Widget child;
  final Function press;
  MyPopupMenuItem({required this.child, required this.press})
      : super(child: child);

  @override
  PopupMenuItemState<T, PopupMenuItem<T>> createState() {
    return MyPopupMenuItemState();
  }
}

class MyPopupMenuItemState<T, PopupMenuItem>
    extends PopupMenuItemState<T, MyPopupMenuItem<T>> {
  @override
  void handleTap() {
    widget.press();
    // super.handleTap();
  }
}
