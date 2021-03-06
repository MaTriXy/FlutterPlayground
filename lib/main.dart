import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_playground/ExampleNameItem.dart';
import 'package:flutter_playground/models/ExapmleNames.dart';
import 'package:flutter_playground/ui/aboutlisttile/AboutListTileExample.dart';
import 'package:flutter_playground/ui/animatedicons/AnimatedIcons.dart';
import 'package:flutter_playground/ui/animatedsize/AnimatedSize.dart';
import 'package:flutter_playground/ui/animatedswitcher/AnimatedSwitcherExample.dart';
import 'package:flutter_playground/ui/app_bar/AppBarExample.dart';
import 'package:flutter_playground/ui/bottomnavigation/BottomNavigation.dart';
import 'package:flutter_playground/ui/chipsexample/ChipsExample.dart';
import 'package:flutter_playground/ui/collapsibletoolbar/CollapsibleToolbar.dart';
import 'package:flutter_playground/ui/cupertino/CupertinoActionSheetExample.dart';
import 'package:flutter_playground/ui/cupertino/CupertinoProgressIndicatorExample.dart';
import 'package:flutter_playground/ui/cupertino/CupertinoTimerPickerExample.dart';
import 'package:flutter_playground/ui/dragdrop/ExampleDragDrop.dart';
import 'package:flutter_playground/ui/drawer/NavigationDrawer.dart';
import 'package:flutter_playground/ui/gridpaper/GridPaperExample.dart';
import 'package:flutter_playground/ui/hardwarekey/RawKeyboardDemo.dart';
import 'package:flutter_playground/ui/lifecycle/Lifecycle.dart';
import 'package:flutter_playground/ui/local_auth/LocalAuth.dart';
import 'package:flutter_playground/ui/nestedlist/NestedList.dart';
import 'package:flutter_playground/ui/progressbutton/ProgressButton.dart';
import 'package:flutter_playground/ui/rotatedbox/RotatedBox.dart';
import 'package:flutter_playground/ui/staggeredanimation/StaggerDemo.dart';
import 'package:flutter_playground/ui/stepper/StepperExample.dart';
import 'package:flutter_playground/ui/tabbar/TabBarExample.dart';
import 'package:flutter_playground/ui/text/TextExamples.dart';
import 'package:flutter_playground/ui/text/TextSpan.dart';
import 'package:flutter_playground/ui/text/TextUnderline.dart';
import 'package:flutter_playground/utils/Strings.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: Strings.appName,
        theme: new ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: Strings.fontRobotoRegular,
        ),
        debugShowCheckedModeBanner: false,
        home: new MyHomePage(title: Strings.appName),
        routes: <String, WidgetBuilder>{
          Strings.appBarExampleRoute: (BuildContext context) => AppBarExample(),
          Strings.tabBarExampleRoute: (BuildContext context) => TabBarExample(
                title: Strings.TabBarTitle,
              ),
          Strings.navigationDrawerExampleRoute: (BuildContext context) =>
              NavigationDrawer(),
          Strings.bottomNavigationExampleRoute: (BuildContext context) =>
              BottomNavigation(title: Strings.bottomNavigationTitle),
          Strings.collapsibleToolbarExampleRoute: (BuildContext context) =>
              CollapsibleToolbar(title: Strings.appName),
          Strings.animatedIconsExampleRoute: (BuildContext context) =>
              AnimatedIconsDemo(title: Strings.animatedIconsTitle),
          Strings.animatedSizeExampleRoute: (BuildContext context) =>
              AnimatedSizeDemo(title: Strings.animatedSizeTitle),
          Strings.progressButtonExampleRoute: (BuildContext context) =>
              ProgressButton(title: Strings.progressButtonTitle),
          Strings.staggerDemoExampleRoute: (BuildContext context) =>
              StaggerDemo(title: Strings.staggerDemoTitle),
          Strings.stepperExampleRoute: (BuildContext context) =>
              StepperExample(title: Strings.stepperExampleTitle),
          Strings.hardwareKeyExampleRoute: (BuildContext context) =>
              RawKeyboardDemo(title: Strings.hardwareKeyExampleTitle),
          Strings.dragDropExampleRoute: (BuildContext context) =>
              DragAndDropExample(title: Strings.dragDropExampleTitle),
          Strings.animatedSwitcherExampleRoute: (BuildContext context) =>
              AnimatedSwitcherExample(
                  title: Strings.animatedSwitcherExampleTitle),
          Strings.textExampleExampleRoute: (BuildContext context) =>
              TextExamples(title: Strings.textExampleExampleTitle),
          Strings.textSpanExampleRoute: (BuildContext context) =>
              TextSpanExample(title: Strings.textSpanExampleTitle),
          Strings.textUnderlineExampleRoute: (BuildContext context) =>
              TextUnderline(title: Strings.textUnderlineExampleTitle),
          Strings.aboutListTileExampleRoute: (BuildContext context) =>
              AboutListTileExample(title: Strings.aboutListTileExampleTitle),
          Strings.lifeCycleStateExampleRoute: (BuildContext context) =>
              Lifecycle(title: Strings.lifeCycleStateExampleTitle),
          Strings.localAuthExampleRoute: (BuildContext context) =>
              LocalAuthExample(title: Strings.localAuthTitle),
          Strings.rotatedBoxExampleRoute: (BuildContext context) =>
              RotatedBoxExample(Strings.rotatedBoxTitle),
          Strings.nestedListExampleRoute: (BuildContext context) =>
              NestedList(Strings.nestedListTitle),
          Strings.cupertinoTimerPickerRoute: (BuildContext context) =>
              CupertinoTimerPickerExample(Strings.cupertinoTimerPickerTitle),
          Strings.CupertinoActionSheetRoute: (BuildContext context) =>
              CupertinoActionSheetExample(Strings.CupertinoActionSheetTitle),
          Strings.CupertinoProgressIndicatorRoute: (BuildContext context) =>
              CupertinoProgressIndicatorExample(
                  Strings.CupertinoProgressIndicatorTitle),
          Strings.GridPaperRoute: (BuildContext context) =>
              GridPaperExample(Strings.GridPaperTitle),
          Strings.ChipsExampleRoute: (BuildContext context) =>
              ChipsExample(Strings.ChipsExampleTitle),
        });
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = new AnimationController(
      duration: const Duration(milliseconds: 300),
      value: 1.0,
      vsync: this,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  bool status = false;

  bool get _status {
    final AnimationStatus status = _controller.status;
    return status == AnimationStatus.completed ||
        status == AnimationStatus.forward;
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
        actions: <Widget>[
          new IconButton(
            onPressed: () {
              _controller.fling(velocity: _status ? -2.0 : 2.0);
              setState(() {
                status = _status;
              });
            },
            icon: new AnimatedIcon(
              icon: AnimatedIcons.view_list,
              progress: _controller.view,
            ),
          ),
        ],
      ),
      body: new Column(
        children: <Widget>[
          Expanded(
            child: _buildExampleItemsWidget(_status),
          ),
        ],
      ),
    );
  }

  _buildExampleItemsWidget(bool status) {
    if (status) {
      return new ListView.builder(
        itemBuilder: (BuildContext context, int index) => new ExampleNameItem(
              exampleNames: names[index],
            ),
        itemCount: names.length,
        padding: new EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
      );
    } else {
      return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3.0,
        ),
        itemBuilder: (BuildContext context, int index) => new ExampleNameItem(
              exampleNames: names[index],
            ),
        itemCount: names.length,
        padding: new EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
      );
    }
  }
}

// The list displayed by this app.
final List<ExampleNames> names = <ExampleNames>[
  new ExampleNames(Strings.appBarTitle),
  new ExampleNames(Strings.TabBarTitle),
  new ExampleNames(Strings.navigationDrawerTitle),
  new ExampleNames(Strings.collapsibleToolbarTitle),
  new ExampleNames(Strings.bottomNavigationTitle),
  new ExampleNames(Strings.animatedIconsTitle),
  new ExampleNames(Strings.animatedSizeTitle),
  new ExampleNames(Strings.progressButtonTitle),
  new ExampleNames(Strings.staggerDemoTitle),
  new ExampleNames(Strings.stepperExampleTitle),
  new ExampleNames(Strings.hardwareKeyExampleTitle),
  new ExampleNames(Strings.dragDropExampleTitle),
  new ExampleNames(Strings.textExampleExampleTitle),
  new ExampleNames(Strings.animatedSwitcherExampleTitle),
  new ExampleNames(Strings.aboutListTileExampleTitle),
  new ExampleNames(Strings.lifeCycleStateExampleTitle),
  new ExampleNames(Strings.localAuthTitle),
  new ExampleNames(Strings.rotatedBoxTitle),
  new ExampleNames(Strings.nestedListTitle),
  new ExampleNames(Strings.cupertinoTimerPickerTitle),
  new ExampleNames(Strings.CupertinoActionSheetTitle),
  new ExampleNames(Strings.CupertinoProgressIndicatorTitle),
  new ExampleNames(Strings.GridPaperTitle),
  new ExampleNames(Strings.ChipsExampleTitle),
];
