part of flu_ext;

extension StringExt on String {
  int toInt() {
    return int.tryParse(this ?? '0') ?? 0;
  }

  int toIntOrNull() {
    return this == null ? null : int.tryParse(this);
  }

  double toDouble() {
    return double.tryParse(this ?? '0.0') ?? 0.0;
  }

  double toDoubleOrNull() {
    return this == null ? null : double.tryParse(this);
  }

  bool get isNull => this == null || isEmpty;

  bool get isNotNull => this == null ? false : isNotEmpty;
}

extension ListExt<T> on List<T> {
  bool get isNull => this == null || isEmpty;

  bool get isNotNull => this == null ? false : isNotEmpty;

  T get(index) {
    return this == null ? null : this[index];
  }
}
