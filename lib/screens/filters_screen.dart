import 'package:flutter/material.dart';
import '../widgets/main_drawer.dart';

class FilteredScreen extends StatefulWidget {
  static const routeName = '/filters';

  @override
  State<FilteredScreen> createState() => _FilteredScreenState();
}

class _FilteredScreenState extends State<FilteredScreen> {
  var _glutenFree = false;
  var _vegetarian = false;
  var _vegan = false;
  var _lactoseFree = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Your Filters')),
        drawer: MainDrawer(),
        body: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                'Adjust your meal selection.',
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  SwitchListTile(
                    title: Text('Gluten-free'),
                    value: _glutenFree,
                    subtitle: Text(
                      'Only include gluten-free meals',
                    ),
                    onChanged: (newValue) {
                      setState(() {
                        _glutenFree = newValue;
                      });
                    },
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
