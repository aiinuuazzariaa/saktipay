import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;

  const SearchBar({super.key, this.controller, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        height: 48,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(color: Colors.black.withOpacity(0.05), blurRadius: 6),
          ],
        ),
        child: TextField(
          controller: controller,
          onChanged: onChanged,
          textAlignVertical: TextAlignVertical.center,
          decoration: const InputDecoration(
            border: InputBorder.none,
            hintText: 'Cari produk...',
            prefixIcon: Icon(Icons.search),
          ),
        ),
      ),
    );
  }
}
