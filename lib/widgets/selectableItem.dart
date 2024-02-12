import 'package:electrolux/models/ItemModel.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_svg/flutter_svg.dart';

class SelectableItem extends StatefulWidget {
  final ItemModel item;
  final bool isSelected;
  final VoidCallback onTap;

  const SelectableItem({
    Key? key,
    required this.item,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  @override
  _SelectableItemState createState() => _SelectableItemState();
}

class _SelectableItemState extends State<SelectableItem> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          widget.onTap();
        });
      },
      child: Container(
          padding: const EdgeInsets.symmetric(vertical: 16),
          //Divider of each item created by using a bottomborder
          decoration: BoxDecoration(
              border: Border(
            bottom: BorderSide(
              color: Theme.of(context).colorScheme.background,
              width: 1,
            ),
          )),
          child: Row(
            children: [
              SvgPicture.asset(widget.item.imageUrl),
              Expanded(
                  flex: 2,
                  child: Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.item.itemName,
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                          //animated text for description fo item
                          AnimatedOpacity(
                            duration: const Duration(milliseconds: 500),
                            opacity: widget.isSelected ? 1.0 : 0.0,
                            child: widget.isSelected
                                ? Text(
                                    widget.item.itemDesc,
                                    style:
                                        Theme.of(context).textTheme.bodySmall,
                                  )
                                : const SizedBox(),
                          ),
                        ],
                      ))),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: widget.isSelected
                    ? SvgPicture.asset('assets/tick.svg')
                    : const SizedBox(),
              ),
            ],
          )),
    );
  }
}
