import 'package:flutter/material.dart';
import './sample_view_view_model.dart';

class SampleViewView extends SampleViewViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildColumn(),
    );
  }

  ListView buildListView(BuildContext context) {
    return ListView(
      children: [
        Container(
            height: context.height * 0.3,
            child: Image.network(
                "https://www.setaswall.com/wp-content/uploads/2017/06/Dark-Wallpapes-17-1920-x-1200.jpg")
                ),
        buildText(),
        buildSizedBox(),
        buildTextField(),
        SizedBox(height: MediaQuery.of(context).size.height * 0.0100),
        buildTextField2(),
        buildSizedBox(),
        buildOutlineButton,
      ],
    );
  }

  Widget buildColumn() {
    return Row(
      children: [
        Spacer(),
        Expanded(
          flex: 8,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(flex: 7, child: buildContainerImage()),
              Spacer(),
              Expanded(flex: 3, child: buildText()),
              Expanded(flex: 2, child: buildTextField()),
              Spacer(),
              Expanded(flex: 2, child: buildTextField2()),
              Spacer(),
              Expanded(child: buildOutlineButton),
              Spacer()
            ],
          ),
        ),
        Spacer(),
      ],
    );
  }

  Widget buildContainerImage() {
    return Image.network(
        "https://www.setaswall.com/wp-content/uploads/2017/06/Dark-Wallpapes-17-1920-x-1200.jpg",
        fit: BoxFit.fill);
  }

  OutlineButton get buildOutlineButton => new OutlineButton(
      child: new Text("Log In",
      style: Theme.of(context).textTheme.headline6),
      onPressed: () {},
      borderSide: BorderSide(color: Colors.blueGrey),
      shape: new RoundedRectangleBorder(
      borderRadius: new BorderRadius.circular(30.0)));

  TextField buildTextField() => TextField(

      decoration: new InputDecoration(
          border: new OutlineInputBorder(
              borderRadius: BorderRadius.all(
            Radius.circular(30.0),
          )),
          labelText: "Adınız"),
      cursorColor: Colors.white);
 
  TextField buildTextField2() => TextField(
      decoration: new InputDecoration(
          border: new OutlineInputBorder(
              borderRadius: BorderRadius.all(
            Radius.circular(30.0),
          )),
          labelText: "Soyadınız"),
      cursorColor: Colors.white);

  SizedBox buildSizedBox() => SizedBox(height: 50);

  Text buildText() => Text(
        "Login",
        style: Theme.of(context).textTheme.headline4,
      );
}

extension ContextExtension on BuildContext {
  double get height => MediaQuery.of(this).size.height;
}
