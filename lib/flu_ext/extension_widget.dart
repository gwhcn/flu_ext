part of flu_ext;

extension WidgetExt on Widget {
  //添加一个相邻的widget，返回List<Widget>
  List<Widget> addWidget(Widget widget) {
    return <Widget>[this, widget];
  }

  Container container({
    //复制Container构造函数的所有参数（除了child字段）
    Key key,
    AlignmentGeometry alignment,
    EdgeInsetsGeometry padding,
    Color color,
    Decoration decoration,
    Decoration foregroundDecoration,
    double width,
    double height,
    BoxConstraints constraints,
    EdgeInsetsGeometry margin,
    Matrix4 transform,
  }) {
    //调用Container的构造函数，并将当前widget对象作为child参数
    return Container(
      key: key,
      alignment: alignment,
      padding: padding,
      color: color,
      decoration: decoration,
      foregroundDecoration: foregroundDecoration,
      width: width,
      height: height,
      constraints: constraints,
      margin: margin,
      transform: transform,
      child: this,
    );
  }

  InkWell inkWell(
      {GestureTapCallback onTap,
      GestureLongPressCallback onLongPress,
      double radius,
      BorderRadius borderRadius,
      ShapeBorder customBorder}) {
    return InkWell(
        child: this,
        onTap: onTap,
        onLongPress: onLongPress,
        radius: radius,
        borderRadius: borderRadius,
        customBorder: customBorder);
  }

  Padding padding({Key key, @required EdgeInsetsGeometry padding}) {
    return Padding(key: key, child: this, padding: padding);
  }

  Center center({Key key, double widthFactor, double heightFactor, Widget child}) {
    return Center(key: key, widthFactor: widthFactor, heightFactor: heightFactor, child: this);
  }

  Align align(
      {Key key,
      Alignment alignment = Alignment.center,
      double widthFactor,
      double heightFactor,
      Widget child}) {
    return Align(
        key: key, alignment: alignment, widthFactor: widthFactor, heightFactor: heightFactor, child: this);
  }

  Expanded expanded({Key key, int flex = 1}) {
    return Expanded(child: this, flex: flex, key: key);
  }

  Flexible flexible({Key key, int flex = 1, FlexFit fit = FlexFit.loose}) {
    return Flexible(child: this, flex: flex, key: key, fit: fit);
  }

  SafeArea safeArea(
      {Key key,
      bool left = true,
      bool top = true,
      bool right = true,
      bool bottom = true,
      EdgeInsets minimum = EdgeInsets.zero,
      bool maintainBottomViewPadding = false}) {
    return SafeArea(
        key: key,
        left: left,
        top: top,
        right: right,
        bottom: bottom,
        minimum: minimum,
        maintainBottomViewPadding: maintainBottomViewPadding,
        child: this);
  }

  SliverToBoxAdapter sliverToBoxAdapter({Key key}) {
    return SliverToBoxAdapter(key: key, child: this);
  }

  SliverPadding sliverPadding({Key key, @required EdgeInsetsGeometry padding}) {
    return SliverPadding(key: key, padding: padding, sliver: this);
  }

  SizedBox sizedBox({Key key, double width, double height}) {
    return SizedBox(key: key, child: this, width: width, height: height);
  }

  GestureDetector gestureDetector({
    Key key,
    Widget child,
    GestureTapDownCallback onTapDown,
    GestureTapUpCallback onTapUp,
    GestureTapCallback onTap,
    GestureTapCancelCallback onTapCancel,
    GestureTapCallback onSecondaryTap,
    GestureTapDownCallback onSecondaryTapDown,
    GestureTapUpCallback onSecondaryTapUp,
    GestureTapCancelCallback onSecondaryTapCancel,
    GestureTapCallback onDoubleTap,
    GestureLongPressCallback onLongPress,
    GestureLongPressStartCallback onLongPressStart,
    GestureLongPressMoveUpdateCallback onLongPressMoveUpdate,
    GestureLongPressUpCallback onLongPressUp,
    GestureLongPressEndCallback onLongPressEnd,
    GestureLongPressCallback onSecondaryLongPress,
    GestureLongPressStartCallback onSecondaryLongPressStart,
    GestureLongPressMoveUpdateCallback onSecondaryLongPressMoveUpdate,
    GestureLongPressUpCallback onSecondaryLongPressUp,
    GestureLongPressEndCallback onSecondaryLongPressEnd,
    GestureDragDownCallback onVerticalDragDown,
    GestureDragStartCallback onVerticalDragStart,
    GestureDragUpdateCallback onVerticalDragUpdate,
    GestureDragEndCallback onVerticalDragEnd,
    GestureDragCancelCallback onVerticalDragCancel,
    GestureDragDownCallback onHorizontalDragDown,
    GestureDragStartCallback onHorizontalDragStart,
    GestureDragUpdateCallback onHorizontalDragUpdate,
    GestureDragEndCallback onHorizontalDragEnd,
    GestureDragCancelCallback onHorizontalDragCancel,
    GestureForcePressStartCallback onForcePressStart,
    GestureForcePressPeakCallback onForcePressPeak,
    GestureForcePressUpdateCallback onForcePressUpdate,
    GestureForcePressEndCallback onForcePressEnd,
    GestureDragDownCallback onPanDown,
    GestureDragStartCallback onPanStart,
    GestureDragUpdateCallback onPanUpdate,
    GestureDragEndCallback onPanEnd,
    GestureDragCancelCallback onPanCancel,
    GestureScaleStartCallback onScaleStart,
    GestureScaleUpdateCallback onScaleUpdate,
    GestureScaleEndCallback onScaleEnd,
    HitTestBehavior behavior = HitTestBehavior.translucent,
    bool excludeFromSemantics = false,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
  }) {
    return GestureDetector(
      key: key,
      child: this,
      onTapDown: onTapDown,
      onTapUp: onTapUp,
      onTap: onTap,
      onTapCancel: onTapCancel,
      onSecondaryTap: onSecondaryTap,
      onSecondaryTapDown: onSecondaryTapDown,
      onSecondaryTapUp: onSecondaryTapUp,
      onSecondaryTapCancel: onSecondaryTapCancel,
      onDoubleTap: onDoubleTap,
      onLongPress: onLongPress,
      onLongPressStart: onLongPressStart,
      onLongPressMoveUpdate: onLongPressMoveUpdate,
      onLongPressUp: onLongPressUp,
      onLongPressEnd: onLongPressEnd,
      onSecondaryLongPress: onSecondaryLongPress,
      onSecondaryLongPressStart: onSecondaryLongPressStart,
      onSecondaryLongPressMoveUpdate: onSecondaryLongPressMoveUpdate,
      onSecondaryLongPressUp: onSecondaryLongPressUp,
      onSecondaryLongPressEnd: onSecondaryLongPressEnd,
      onVerticalDragDown: onVerticalDragDown,
      onVerticalDragStart: onVerticalDragStart,
      onVerticalDragUpdate: onVerticalDragUpdate,
      onVerticalDragEnd: onVerticalDragEnd,
      onVerticalDragCancel: onVerticalDragCancel,
      onHorizontalDragDown: onHorizontalDragDown,
      onHorizontalDragStart: onHorizontalDragStart,
      onHorizontalDragUpdate: onHorizontalDragUpdate,
      onHorizontalDragEnd: onHorizontalDragEnd,
      onHorizontalDragCancel: onHorizontalDragCancel,
      onForcePressStart: onForcePressStart,
      onForcePressPeak: onForcePressPeak,
      onForcePressUpdate: onForcePressUpdate,
      onForcePressEnd: onForcePressEnd,
      onPanDown: onPanDown,
      onPanStart: onPanStart,
      onPanUpdate: onPanUpdate,
      onPanEnd: onPanEnd,
      onPanCancel: onPanCancel,
      onScaleStart: onScaleStart,
      onScaleUpdate: onScaleUpdate,
      onScaleEnd: onScaleEnd,
      behavior: behavior,
      excludeFromSemantics: excludeFromSemantics,
      dragStartBehavior: dragStartBehavior,
    );
  }

  SingleChildScrollView singleChildScrollView({
    Key key,
    Axis scrollDirection = Axis.vertical,
    bool reverse = false,
    EdgeInsetsGeometry padding,
    bool primary,
    ScrollPhysics physics,
    ScrollController controller,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    Clip clipBehavior = Clip.hardEdge,
  }) {
    return SingleChildScrollView(
      key: key,
      child: this,
      scrollDirection: scrollDirection,
      reverse: reverse,
      padding: padding,
      primary: primary,
      physics: physics,
      controller: controller,
      dragStartBehavior: dragStartBehavior,
      clipBehavior: clipBehavior,
    );
  }

  DefaultTextStyle defaultTextStyle({
    Key key,
    @required TextStyle style,
    TextAlign textAlign,
    bool softWrap = true,
    TextOverflow overflow = TextOverflow.clip,
    int maxLines,
    TextWidthBasis textWidthBasis = TextWidthBasis.parent,
    TextHeightBehavior textHeightBehavior,
  }) {
    return DefaultTextStyle(
      key: key,
      style: style,
      textAlign: textAlign,
      softWrap: softWrap,
      overflow: overflow,
      maxLines: maxLines,
      textWidthBasis: textWidthBasis,
      textHeightBehavior: textHeightBehavior,
      child: this,
    );
  }

  Positioned positioned(
      {Key key, double left, double top, double right, double bottom, double width, double height}) {
    return Positioned(
      key: key,
      left: left,
      top: top,
      right: right,
      bottom: bottom,
      width: width,
      height: height,
      child: this,
    );
  }

  Positioned positionedFill(
      {Key key, double left = 0.0, double top = 0.0, double right = 0.0, double bottom = 0.0}) {
    return Positioned.fill(
      key: key,
      left: left,
      top: top,
      right: right,
      bottom: bottom,
      child: this,
    );
  }

  ClipRRect clipRRect(
      {Key key,
      BorderRadius borderRadius = BorderRadius.zero,
      CustomClipper<RRect> clipper,
      Clip clipBehavior = Clip.antiAlias}) {
    return ClipRRect(
        key: key, borderRadius: borderRadius, clipper: clipper, clipBehavior: clipBehavior, child: this);
  }

  ClipOval clipOval({Key key, CustomClipper<Rect> clipper, Clip clipBehavior = Clip.antiAlias}) {
    return ClipOval(key: key, clipper: clipper, clipBehavior: clipBehavior, child: this);
  }
}

extension TextSpanExt on TextSpan {
  RichText richText(
      {Key key,
      TextAlign textAlign = TextAlign.start,
      TextDirection textDirection,
      bool softWrap = true,
      TextOverflow overflow = TextOverflow.clip,
      double textScaleFactor = 1.0,
      int maxLines,
      Locale locale,
      StrutStyle strutStyle,
      TextWidthBasis textWidthBasis = TextWidthBasis.parent,
      TextHeightBehavior textHeightBehavior}) {
    return RichText(
        key: key,
        text: this,
        textAlign: textAlign,
        textDirection: textDirection,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        locale: locale,
        strutStyle: strutStyle,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }
}

extension WidgetListExt<T extends Widget> on List<T> {
  //子List<Widget>列表中再添加一个相邻的widget，并返回当前列表
  List<Widget> addWidget(Widget widget) {
    return this..add(widget);
  }

  Row intoRow({
    Key key,
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    MainAxisSize mainAxisSize = MainAxisSize.max,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    TextDirection textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    TextBaseline textBaseline,
  }) {
    return Row(
      key: key,
      mainAxisAlignment: mainAxisAlignment,
      mainAxisSize: mainAxisSize,
      crossAxisAlignment: crossAxisAlignment,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      textBaseline: textBaseline,
      children: this,
    );
  }

  Column intoColumn({
    Key key,
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    MainAxisSize mainAxisSize = MainAxisSize.max,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    TextDirection textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    TextBaseline textBaseline,
  }) {
    return Column(
      key: key,
      mainAxisAlignment: mainAxisAlignment,
      mainAxisSize: mainAxisSize,
      crossAxisAlignment: crossAxisAlignment,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      textBaseline: textBaseline,
      children: this,
    );
  }

  Stack intoStack({
    Key key,
    AlignmentGeometry alignment = AlignmentDirectional.topStart,
    TextDirection textDirection,
    StackFit fit = StackFit.loose,
    Overflow overflow = Overflow.clip,
    Clip clipBehavior = Clip.hardEdge,
  }) {
    return Stack(
      key: key,
      alignment: alignment,
      textDirection: textDirection,
      fit: fit,
      overflow: overflow,
      clipBehavior: clipBehavior,
      children: this,
    );
  }
}
