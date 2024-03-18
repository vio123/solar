import 'package:flutter/material.dart';

class CustomDropDown extends StatefulWidget {
  final List<String> listItems;
  final Function(String) onItemSelected;

  const CustomDropDown({
    super.key,
    required this.listItems,
    required this.onItemSelected,
  });

  @override
  State<CustomDropDown> createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  String _selectedItem = '';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _selectedItem = widget.listItems.first;
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: InputDecorator(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(
              color: Color(0xFF312E2C),
              width: 2.0,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(
              color: Color(0xFF312E2C),
              width: 2.0,
            ),
          ),
        ),
        child: SizedBox(
          height: 25,
          child: DropdownButton(
            value: _selectedItem,
            items: widget.listItems
                .map((item) => DropdownMenuItem(
                      value: item,
                      child: Text(
                        item,
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ))
                .toList(),
            onChanged: (value) {
              setState(() {
                _selectedItem = value!;
              });
              widget.onItemSelected(value!);
            },
          ),
        ),
      ),
    );
  }
}
