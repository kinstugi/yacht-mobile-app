import 'package:flutter/material.dart';
import 'package:yachtmob/constants/ui_constants.dart';
import 'package:yachtmob/widgets/boat_type_filter_tile.dart';
import 'package:yachtmob/widgets/form_label_widget.dart';

class FilterSearchPage extends StatelessWidget {
  static const String tag = '/filter-search-page';
  const FilterSearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(Icons.chevron_left, color: Colors.pink, size: 30),
        ),
        title: const Text('Filter', style: TextStyle(color: Colors.black)),
        actions: [TextButton(onPressed: () {}, child: const Text('Reset'))],
      ),
      body: SafeArea(
        child: Column(
          children: [
            const Divider(),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 18.0,
                  right: 18.0,
                  bottom: 10,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const FormLabelWidget(label: 'BOAT TYPE'),
                      const SizedBox(height: 18),
                      const BoatTypeFilterGridWidget(
                        items: [
                          'Sailboat',
                          'Gulet',
                          'Motoryacht',
                          'Motorboat',
                          'Catarman',
                          'Houseboat',
                          'RIB'
                        ],
                      ),
                      const SizedBox(height: 18),
                      const Divider(thickness: 1.1),
                      const SizedBox(height: 8),
                      DropdownButtonFormField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          contentPadding: authInputFieldsContentPadding,
                        ),
                        hint: const Text('Select captain status'),
                        items: const [
                          DropdownMenuItem(
                            child: Text('With or Without Captain'),
                            value: 'with or without captain',
                          ),
                          DropdownMenuItem(
                            child: Text('With Captain'),
                            value: 'with captain',
                          ),
                          DropdownMenuItem(
                            child: Text('Without Captain'),
                            value: 'without captain',
                          )
                        ],
                        onChanged: (val) {},
                      ),
                      const SizedBox(height: 8),
                      const Divider(thickness: 1.1),
                      _buildLabelNumSelector(label: 'Number of people'),
                      _buildLabelNumSelector(label: 'Number of cabins'),
                      _buildLabelNumSelector(label: 'Number of Berths'),
                      const Divider(thickness: 1.1),
                      _buildSlider(label: 'Length', trailing: '0 - 30 m +'),
                      const Divider(thickness: 1.1),
                      _buildSlider(label: 'Price', trailing: '0 - ₺1000 +')
                    ],
                  ),
                ),
              ),
            ),
            const Divider(thickness: 1.1),
          ],
        ),
      ),
    );
  }

  _buildLabelNumSelector({required String label}) {
    return Row(
      children: [
        Expanded(
          child: Text(
            label,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.remove_circle_outline),
        ),
        const Text('0'),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.add_circle_outline),
        ),
      ],
    );
  }

  _buildSlider({required String label, required String trailing}) {
    return Column(
      children: [
        Row(
          children: [Expanded(child: Text(label)), Text(trailing)],
        ),
        RangeSlider(
          max: 100,
          values: const RangeValues(0, 100),
          onChanged: (val) {},
        )
      ],
    );
  }
}
