class OptionsModel {
  String text;
  bool isSelected;

  OptionsModel({
    this.isSelected = false,
    this.text = 'All',
  });

  static List<OptionsModel> getOptions() {
    List<OptionsModel> options = [];

    options.add(
      OptionsModel(
        isSelected: true,
        text: 'Cours',
      ),
    );

    options.add(
      OptionsModel(
        isSelected: true,
        text: 'Events',
      ),
    );

    options.add(
      OptionsModel(
        isSelected: true,
        text: 'Clubs',
      ),
    );

    options.add(
      OptionsModel(
        isSelected: true,
        text: '',
      ),
    );

    return options;
  }
}
