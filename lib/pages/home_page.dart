import 'package:flutter/material.dart';
import 'package:myapp/models/options_model.dart';

import '../widgets/header_section.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  List<OptionsModel> options = [];

  void _getOptions() {
    options = OptionsModel.getOptions();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            HeaderSection(),
            Column(
              children: [
                ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: EdgeInsets.all(8),
                      height: 30,
                      decoration: BoxDecoration(
                        color: Colors.amber,
                      ),
                      child: Text(
                        options[index].text,
                      ),
                    );
                  },
                  itemCount: options.length,
                  separatorBuilder: (context, index) =>
                      const SizedBox(width: 16),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
