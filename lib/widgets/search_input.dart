import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 50.0 , vertical: 5 ),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
          border: Border.all(color: Colors.white12),
        borderRadius: BorderRadius.circular(30),
      ),
      padding: const EdgeInsets.symmetric( horizontal: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Padding(
            padding: EdgeInsets.only(top: 3),
            child: Icon(
              Icons.search,
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Search a doctor or health issue',
                hintStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700
                ),
                  disabledBorder:InputBorder.none,
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none
              ),
            ),
          ),
        ],
      ),
    );
  }
  }
