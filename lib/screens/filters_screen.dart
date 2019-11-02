import 'package:flutter/material.dart';
import 'package:meals_app/widgets/main_drawer.dart';

class FiltersScreen extends StatefulWidget {
  static final routedName = 'filters-screen';

  const FiltersScreen({Key key}) : super(key: key);

  @override
  _FiltersScreenState createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  bool _glutenFree = false;
  bool _vegetarian = false;
  bool _vegan = false;
  bool _lactoseFree = false;

  Widget _buildSwitchListTitle(title, subTitle, variable, updateFunction) {
    return SwitchListTile(
      title: Text(title),
      value: variable,
      subtitle: Text(subTitle),
      onChanged: (newValue) {
        updateFunction(newValue);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Filters'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              'Adust your meal selection',
              style: Theme.of(context).textTheme.title,
            ),
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                _buildSwitchListTitle(
                  'Gluten-free',
                  'Only gluten-free meals',
                  _glutenFree,
                  (value) {
                    setState(() {
                      _glutenFree = value;
                    });
                  },
                ),
                _buildSwitchListTitle(
                  'Vegan',
                  'Only vegan meals',
                  _vegan,
                  (value) {
                    setState(() {
                      _vegan = value;
                    });
                  },
                ),
                _buildSwitchListTitle(
                  'Lactose-free',
                  'Only lactose-free meals',
                  _lactoseFree,
                  (value) {
                    setState(() {
                      _lactoseFree = value;
                    });
                  },
                ),
                _buildSwitchListTitle(
                  'Vegetarian',
                  'Only vagetarian meals',
                  _vegetarian,
                  (value) {
                    setState(() {
                      _vegetarian = value;
                    });
                  },
                )
              ],
            ),
          )
        ],
      ),
      drawer: MainDrawer(),
    );
  }
}
