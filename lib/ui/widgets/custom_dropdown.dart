import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomDropdownMenuItem<T> extends PopupMenuEntry<T> {
  CustomDropdownMenuItem(
      {required this.value, required this.text, this.callback});

  final T value;
  final String text;
  final Function? callback;

  @override
  _CustomDropdownMenuItemState<T> createState() =>
      _CustomDropdownMenuItemState<T>();

  @override
  double get height => 32.0;

  @override
  bool represents(T? value) => this.value == value;
}

class _CustomDropdownMenuItemState<T> extends State<CustomDropdownMenuItem<T>> {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(minWidth: 120),
      child: InkWell(
        onTap: () => Navigator.of(context).pop<T>(widget.value),
        child: Container(
          constraints: BoxConstraints(minWidth: 30.0),
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: ListTile(
              title: Text(
                widget.text,
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade600,
                ),
              ),
              trailing: GestureDetector(
                onTap: () {
                  if (widget.callback != null) {
                    widget.callback!();
                  }
                },
                child: SvgPicture.asset('assets/images/dismiss.svg',
                    color: Colors.grey, semanticsLabel: 'Back'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}