import 'package:electrolux/models/ItemModel.dart';
import 'package:electrolux/widgets/selectableItem.dart';
import 'package:electrolux/widgets/selectionToggle.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool toggleValue = true; // initially list is enabled
  ItemModel? selectedModel;

  //List data
  final List<ItemModel> itemList = [
    ItemModel(
      itemName: 'Cotton Eco',
      itemDesc: 'Cupboard-dries cottons with maximum energy saving.',
      imageUrl: 'assets/cotton.svg',
    ),
    ItemModel(
      itemName: 'Cottons',
      itemDesc: '100% cotton fabrics',
      imageUrl: 'assets/cotton.svg',
    ),
    ItemModel(
      itemName: 'Synthetics',
      itemDesc:
          'For a mix of mostly synthetic fabrics, like polyester, or polyamide.',
      imageUrl: 'assets/synthetics.svg',
    ),
    ItemModel(
      itemName: 'Mixed+',
      itemDesc:
          'Cotton, cotton-synthetic blends, and synthetics that don’t need ironing.',
      imageUrl: 'assets/mixed.svg',
    ),
    ItemModel(
      itemName: 'Delicates',
      itemDesc: 'Viscose, rayon, acrylic, and other blends. ',
      imageUrl: 'assets/delicates.svg',
    ),
    ItemModel(
      itemName: 'Sports',
      itemDesc:
          'Athletic clothes made of synthetics like polyester, elastane, or polyamide.',
      imageUrl: 'assets/sports.svg',
    ),
    ItemModel(
      itemName: 'Bed linen XL',
      itemDesc: 'Up to 2 single and 1 double sets of bedding.',
      imageUrl: 'assets/linen.svg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
          child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(children: [
                //button which enables or disables the whole list
                SelectionToggle(
                  onToggleChanged: (value) {
                    //callback function bringing bcak the new changed value
                    setState(() {
                      toggleValue =
                          value; //new value stored which is later used to apply overlay over card
                    });
                  },
                ),
                Expanded(
                  child: Stack(
                    children: [
                      Card(
                        elevation: 0.0,
                        color: Theme.of(context).colorScheme.primary,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: itemList.length,
                            itemBuilder: (context, index) {
                              return SelectableItem(
                                  item: itemList[index],
                                  isSelected: itemList[index] ==
                                      selectedModel, // no model selected initially s condition is false
                                  onTap: () {
                                    setState(() {
                                      selectedModel = itemList[
                                          index]; // selectedmodel stores selected index value
                                    });
                                  });
                            },
                          ),
                        ),
                      ),
                      toggleValue
                          ? const SizedBox()
                          //An overlay over the whole card when toggle is diabled
                          : Positioned(
                              child: Container(
                                decoration: BoxDecoration(
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                    borderRadius: BorderRadius.circular(16)),
                              ),
                            ),
                    ],
                  ),
                ),
              ]))),
    );
  }
}
