import 'package:flutter/material.dart';

import 'data.dart';
class Inherit extends InheritedWidget{
  Inherit({
             this.color = Colors.teal,
             required this.child,
             required this.database,
      }) : super(child: child);
  final Color color;
  final Widget child;
  final Database database;

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return true;
  }
  static Inherit of(BuildContext context){
    Inherit? inherit = context.dependOnInheritedWidgetOfExactType<Inherit>();
    assert(inherit != null, 'No FrogColor found in context');
    return inherit!;
  }

}