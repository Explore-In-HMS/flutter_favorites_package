/*
 * Copyright 2022. Flutter Favorites Package All rights reserved.
 *
 *  Licensed under the Apache License, Version 2.0 (the "License");
 *  you may not use this file except in compliance with the License.
 *  You may obtain a copy of the License at
 *
 *  http://www.apache.org/licenses/LICENSE-2.0
 *
 *  Unless required by applicable law or agreed to in writing, software
 *  distributed under the License is distributed on an "AS IS" BASIS,
 *  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *  See the License for the specific language governing permissions and
 *  limitations under the License.
 *
 */

import 'package:flutter/material.dart';

class DraggableContainer extends StatefulWidget {
  final Widget child;
  final double width;
  final double height;
  final double dragXOffset;
  final double dragYOffset;
  final double cornerRadius;
  final VoidCallback onPressed;

  const DraggableContainer(
      {Key? key,
      required this.child,
      this.width = 120,
      this.height = 180,
      this.dragXOffset = 5,
      this.dragYOffset = 100,
      this.cornerRadius = 16,
      required this.onPressed})
      : super(key: key);

  @override
  State<DraggableContainer> createState() => _DraggableContainerState();
}

class _DraggableContainerState extends State<DraggableContainer> {
  bool _showChild = true;

  double _screenWidth = 5;
  double _x = 5;
  double _y = 90;

  BoxDecoration get _childDecoration => BoxDecoration(
      color: Colors.black,
      borderRadius: BorderRadius.all(Radius.circular(widget.cornerRadius)));

  double _calculateStopPositionYAnchor(BoxConstraints constraints) {
    if (widget.dragYOffset <= 12) {
      return constraints.maxHeight - widget.height - (widget.dragYOffset / 2);
    } else {
      return constraints.maxHeight -
          widget.height -
          (widget.dragYOffset / 2 - 10);
    }
  }

  void _calculateStopPosition(
      DraggableDetails details, BoxConstraints constraints) {
    if (details.offset.dx + widget.width / 2 >= constraints.maxWidth / 2) {
      // dragged to right
      _x = constraints.maxWidth - widget.width - widget.dragXOffset;
    } else {
      // dragged to left
      _x = widget.dragXOffset;
    }

    if (details.offset.dy + widget.height / 2 >= constraints.maxHeight / 2) {
      // dragged to bottom
      _y = _calculateStopPositionYAnchor(constraints) -
          constraints.maxHeight * 0.025;
    } else {
      // dragged to top
      _y = widget.dragYOffset / 2 + 10;
    }
    _showChild = true;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  Container get container => Container(
      clipBehavior: Clip.hardEdge,
      width: widget.width,
      height: widget.height,
      decoration: _childDecoration,
      child: widget.child);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext ctx, BoxConstraints constraints) {
      {
        if (_screenWidth != constraints.maxWidth) {
          _x = constraints.maxWidth - widget.width - widget.dragXOffset;
          _y = widget.dragYOffset / 2 + 10;
        }
        _screenWidth = constraints.maxWidth;
      }
      return Stack(
        children: [
          Positioned(
            left: _x,
            top: _y,
            child: InkWell(
              onTap: widget.onPressed,
              child: Draggable<Color>(
                data: Colors.yellow,
                child: Visibility(
                  visible: _showChild,
                  child: container,
                ),
                feedback: container,
                onDragStarted: () {
                  setState(() {
                    _showChild = false;
                  });
                },
                onDragUpdate: (details) {
                  setState(() {
                    _x = details.localPosition.dx;
                    _y = details.localPosition.dy;
                  });
                },
                onDragEnd: (details) {
                  setState(() {
                    _calculateStopPosition(details, constraints);
                  });
                },
              ),
            ),
          )
        ],
      );
    });
  }
}
