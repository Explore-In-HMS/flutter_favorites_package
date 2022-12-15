# flutter_favorites_package

## Get Started

The goal of this package is to not create same components in the different projects. We will define
styles, icons, widgets etc. to avoid wasting time.

These widgets are supported:

* Social media buttons
* Color picker
* Colorful text
* Draggable container
* Duration picker
* Image icon
* Icon badge
* Info dialog
* Time picker

<br />
<br />
<br />
<div align="center">
    <img src="/screenshots/home.png" width="400px" />
</div>

## Widgets

| <br />**Code Snippets**| <br />**Screenshots**|
|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------|
| <pre>HColorPicker(<br> defaultColor: _selectedColor,<br> selectedColor: (Color color) { },<br>)<pre>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     | <img src="/screenshots/color_picker.png" width="400px" /> />|
| <pre>ColorfulText(<br>"Example Colorful Text", <br>begin: Alignment.topCenter, <br>end: Alignment.bottomCenter, <br>style: ThemeText.colorfulTextStyleLargeTitle, <br>colorList: const [Colors.white, Colors.black],<br>)<pre>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           | <img src="/screenshots/colorful_text.png" width="400px" />       |
| <pre>DraggableContainer(<br>&emsp;dragYOffset: 0,<br>&emsp;child: Center(<br>&emsp;child: Image.asset(<br>&emsp;ImagePaths.huaweiIconPath,<br>&emsp;fit: BoxFit.cover,<br>&emsp;),<br>&emsp;),<br>&emsp;onPressed: () {}<br>&emsp;)<pre>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 | <img src="/screenshots/draggable_container.png" width="400px" /> |
| <pre>DurationPicker(<br>   onDurationSelected: (minutes) {},<br>   borderRadius: 16,<br>   chipTextStyle: const TextStyle(<br>    color: Colors.yellow,<br>    fontWeight: FontWeight.normal,<br>    fontSize: 18),<br>   chipBackgroundColor: Colors.indigo,<br>   chipCount: 8,<br>   startMinute: 10,<br>   minuteInterval: 25,<br>   spacing: 18,<br>   runSpacing: 8,<br>   chipPadding: 3,<br>   height: 150,<br>   )<pre>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         | <img src="/screenshots/duration_picker.png" width="400px" /> />  |                                                                                                                       
| <pre>InfoDialog(<br>&emsp;imageSettings:<br>&emsp;ImageSettings(<br/><br>&emsp;imagePath: ImagePaths.huaweiIconPath),<br>&emsp;title: "This is customized info dialog",<br>&emsp;subtitle:<br>&emsp;"We changed button text style, Title text style, subtitle text style, <br>background color, padding between title & subtitle and button style.",<br>&emsp;buttonText: const Text(<br>&emsp;"I see",<br>&emsp;style: TextStyle(color: Colors.amber),<br>&emsp;),<br>&emsp;dialogBackgroundColor: Colors.orange,<br>&emsp;dialogRadius: 10,<br>&emsp;titleTextStyle: const TextStyle(<br>&emsp;color: Colors.white,<br>&emsp;fontSize: 20,<br>&emsp;fontWeight: FontWeight.bold),<br>&emsp;paddingBetweenTitleSubtitle: 30,<br>&emsp;subtitleTextStyle: const TextStyle(<br>&emsp;color: Colors.white,<br>&emsp;fontWeight: FontWeight.w400,<br>&emsp;fontSize: 16),<br>&emsp;buttonSettings: SubmitButtonSettings(<br>&emsp;height: 50,<br>&emsp;width: 200,<br>&emsp;buttonStyle: ButtonStyle(<br>&emsp;textStyle: MaterialStateProperty.resolveWith(<br>&emsp;(states) => const TextStyle(<br>&emsp;fontSize: 20,<br>&emsp;fontWeight: FontWeight.bold)),<br>&emsp;backgroundColor: MaterialStateColor.resolveWith(<br>&emsp;(states) => Colors.red))),<br>&emsp;onPressed: () { }<br>&emsp;))<pre> |   <img src="/screenshots/info_dialog.png" width="400px" />|
| <pre>Column(<br>&emsp;mainAxisAlignment: MainAxisAlignment.center,<br>&emsp;children: [<br>&emsp;HSocialButtons.facebook(onPressed: () {}),<br>&emsp;const SizedBox(<br>&emsp;height: 15,<br>&emsp;),<br>&emsp;HSocialButtons.google(onPressed: () {}),<br>&emsp;const SizedBox(<br>&emsp;height: 15,<br>&emsp;),<br>&emsp;HSocialButtons.huawei(onPressed: () {}),<br>&emsp;const SizedBox(<br>&emsp;height: 15,<br>&emsp;),<br>&emsp;HSocialButtons.github(onPressed: () {}),<br>&emsp;const SizedBox(<br>&emsp;height: 15,<br>&emsp;),<br>&emsp;HSocialButtons.twitter(onPressed: () {}),<br>&emsp;const SizedBox(<br>&emsp;height: 15,<br>&emsp;),<br>&emsp;HSubmitButton(<br>&emsp;onPressed: () {},<br>&emsp;child: const Text("Sign Up"),<br>&emsp;height: 50,<br>&emsp;width: 150,<br>&emsp;),<br>&emsp;const SizedBox(<br>&emsp;height: 15,<br>&emsp;),<br>&emsp;HSubmitButton.icon(<br>&emsp;width: 140,<br>&emsp;height: 60,<br>&emsp;onPressed: () {},<br>&emsp;icon: const Icon(Icons.add),<br>&emsp;label: const Text("Sign In")),<br>&emsp;],<br>&emsp;)<pre>                                                                                                                                                                                                                             | <img src="/screenshots/social_buttons.png" width="400px" />   |
| <pre>TimePicker(<br>&emsp;selectText: "Select",<br>&emsp;onSelectPressed: (mills) {<br>&emsp;setState(() {<br>&emsp;_millisecond = mills;<br>&emsp;});<br>&emsp;Navigator.of(context).pop();<br>&emsp;},<br>&emsp;cancelText: "Cancel",<br>&emsp;onCancelPressed: () {<br>&emsp;Navigator.of(context).pop();<br>&emsp;},<br>&emsp;selected: DateTime.now(),<br>&emsp;interval: 10,<br>&emsp;containerHeight: 250,<br>&emsp;itemExtent: 20,<br>&emsp;magnification: 1.3,<br>&emsp;key: null,<br>&emsp;)<pre>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | <img src="/screenshots/time_picker.png" width="400px" /> />|
| <pre>HIconBadge(<br>&emsp;counts: _count,<br>&emsp;top: 2,<br>&emsp;badgeIcon: const Icon(Icons.calendar_month),<br>&emsp;iconSize: 50,<br>&emsp;containerPadding: const EdgeInsets.all(6),<br>&emsp;containerColor: HColors.hOrange[100],<br>&emsp;containerShape: BoxShape.circle,<br>&emsp;minWidth: 20,<br>&emsp;minHeight: 20,<br>&emsp;containerTextStyle: TextStyle(color: HColors.hPurple[100]).b12(),<br>&emsp;onSelectPressed: () {},<br>&emsp;)<pre>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          | <img src="/screenshots/badge.png" width="400px" />|

