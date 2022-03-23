class ThemeDataModel {
  late int primaryColor;
  late String theme;
  late int appbarColor;
  late int backgroundColor;
  late  bool enableCustomFlag;
  late  int primaryColorLight;
  late  int primaryColorDark;
  late int accentColor;
  late int highlightColor;
  late int textFontSize;

  ThemeDataModel(
      {required this.primaryColor,
        required this.theme,
        required this.appbarColor,
        required this.backgroundColor,
        required this.enableCustomFlag,
        required this.primaryColorLight,
        required this.primaryColorDark,
        required this.accentColor,
        required this.highlightColor,
        required this.textFontSize});

  ThemeDataModel.fromJson(Map<String, dynamic> json) {
    primaryColor = json['primaryColor'];
    theme = json['theme'];
    appbarColor = json['appbarColor'];
    backgroundColor = json['backgroundColor'];
    enableCustomFlag = json['enableCustomFlag'];
    primaryColorLight = json['primaryColorLight'];
    primaryColorDark = json['primaryColorDark'];
    accentColor = json['accentColor'];
    highlightColor = json['highlightColor'];
    textFontSize = json['textFontSize'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['primaryColor'] = this.primaryColor;
    data['theme'] = this.theme;
    data['appbarColor'] = this.appbarColor;
    data['backgroundColor'] = this.backgroundColor;
    data['enableCustomFlag'] = this.enableCustomFlag;
    data['primaryColorLight'] = this.primaryColorLight;
    data['primaryColorDark'] = this.primaryColorDark;
    data['accentColor'] = this.accentColor;
    data['highlightColor'] = this.highlightColor;
    data['textFontSize'] = this.textFontSize;
    return data;
  }
}
