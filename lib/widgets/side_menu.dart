import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280.0,
      height: double.infinity,
      color: Theme.of(context).primaryColor,
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.asset(
                  'assets/logo.png',
                  height: 55.0,
                  filterQuality: FilterQuality.low,
                ),
              ),
            ],
          ),
          ListTile(
              title: Text('Home', style: Theme.of(context).textTheme.bodyText1))
        ],
      ),
    );
  }
}
