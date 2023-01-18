import 'package:flutter/material.dart';

class SugestionItem extends StatelessWidget {
  const SugestionItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(4, 5, 0, 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const CircleAvatar(
            radius: 18,
            backgroundImage: NetworkImage(
                'https://images.pexels.com/photos/681391/pexels-photo-681391.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
            backgroundColor: Colors.transparent,
          ),
          const SizedBox(
            width: 16,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'neymmarjr',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
                Text(
                  'Neymar Jr',
                  style: TextStyle(
                      fontWeight: FontWeight.w400, color: Colors.white),
                )
              ],
            ),
          ),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () {},
              child: const Text(
                'Ligar',
                style: TextStyle(
                    color: Color(0xFF0396F6),
                    fontWeight: FontWeight.bold,
                    fontSize: 12),
              ),
            ),
          )
        ],
      ),
    );
  }
}
