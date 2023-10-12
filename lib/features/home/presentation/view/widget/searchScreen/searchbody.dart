import 'package:bookapp_cleanarch/features/home/presentation/view/widget/homeWidget/bestSellerListView.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Searchbody extends StatelessWidget {
  const Searchbody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          searchAppBar(context),
          const BestSellerListView(
            isSearch: true,
          )
        ],
      ),
    );
  }

  Widget searchAppBar(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back),
          ),
          SizedBox(
            width: MediaQuery.sizeOf(context).width / 1.2,
            child: TextFormField(
              decoration: InputDecoration(
                  hintText: "Search",
                  suffixIcon: const Icon(FontAwesomeIcons.magnifyingGlass),
                  enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12))),
            ),
          ),
        ],
      ),
    );
  }
}
