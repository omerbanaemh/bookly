import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key, required this.onSearch, required this.controller});
  final TextEditingController controller;
 final void Function(String) onSearch;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onSubmitted: onSearch, 
      decoration: InputDecoration(
        enabledBorder: buildOutLineInputBorder(), 
        focusedBorder: buildOutLineInputBorder(),
        hintText: "Search",
        suffixIcon: IconButton(
          onPressed: () {
            onSearch(controller.text);
          },
          icon: Opacity(
            opacity: .8,
            child: Icon(FontAwesomeIcons.magnifyingGlass, size: 22),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder buildOutLineInputBorder() {
    return OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.white),
      borderRadius: BorderRadius.circular(12),
    );
  }
}
