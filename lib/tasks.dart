class Tasks {
  final String name;
  bool isChecked;
  Tasks({
    this.name,
    this.isChecked = false,
  });

  void checked() {
    isChecked = !isChecked;
  }
}
