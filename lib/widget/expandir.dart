import 'package:flutter/material.dart';

import 'animated.dart';

class ExpandableText extends StatefulWidget {
  final String text;
  final int maxLines;
  final int minLines;

  const ExpandableText({required Key key, required this.maxLines, required this.minLines, required this.text})
      : super(key: key);

  @override
  _ExpandableTextState createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {
  bool _isExpanded = false;
  late int _linesLength;

  Widget expandableText(bool isExpanded) {
    return Text(
      widget.text,
      overflow: TextOverflow.ellipsis,
      maxLines: isExpanded ? widget.maxLines : widget.minLines,
      style: TextStyle(color: Colors.white),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(5.0),
          // AnimatedCrossFade uses crossFadeState to determine the tansition between first and second child
          child: AnimatedExpandingContainer(
            isExpanded: _isExpanded,
            // use  true and false below instead of using _isExpanded
            // using _isExpanded will affect the animation tranisition
            expandedWidget: expandableText(true),
            unexpandedWidget: expandableText(false),
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              _isExpanded = !_isExpanded;
            });
          },
          child: Container(
            child: Text(
                  !_isExpanded ? "See More" : "See Less",
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
            ),
          ),
      ],
    );
  }
}