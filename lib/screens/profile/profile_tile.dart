import 'package:flutter/material.dart';

class ProfileTile extends StatelessWidget {
   final String string;
   final IconData icon;

  const ProfileTile({super.key, 
 required this.string, required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
                width: 1, color: const Color(0xFFB5B1FF))),
        child: Icon(
          icon,
          color: Colors.white,
        ),
      ),
      title: Text(string,
          style: const TextStyle(
              color: Colors.white, fontSize: 14)),
      trailing: const Icon(
        Icons.arrow_forward_ios_rounded,
        size: 15.0,
        color: Colors.white,
      ),
    );
  }
}
