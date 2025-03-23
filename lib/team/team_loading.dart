import 'package:flutter/material.dart';

class TeamLoading extends StatelessWidget {
  const TeamLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return Container(
              width: double.infinity,
              height: 80,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.05),
                borderRadius: BorderRadius.circular(12),
              )
            );
      },
      separatorBuilder: (context, index) => const SizedBox(height: 10),
      itemCount: 10
    );
  }
}