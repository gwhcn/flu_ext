part of flu_ext;

//扩展函数
extension TextThemeContext on BuildContext {
  TextTheme textTheme() {
    return Theme.of(this).textTheme;
  }

  TextTheme accentTextTheme() {
    return Theme.of(this).accentTextTheme;
  }

  TextTheme primaryTextTheme() {
    return Theme.of(this).primaryTextTheme;
  }

  T getArgument<T>(String key) {
    var arguments = ModalRoute.of(this).settings?.arguments;
    if (arguments is Map && arguments.containsKey(key)) {
      return arguments[key] as T;
    }
    return null;
  }

  T getArguments<T>() {
    return ModalRoute.of(this).settings?.arguments as T;
  }
}
