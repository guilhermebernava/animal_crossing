import 'package:animal_crossing/commons/design/app_colors.dart';
import 'package:flutter/material.dart';

class FishView extends StatelessWidget {
  const FishView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 150,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              height: 180,
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.brown,
                borderRadius: BorderRadius.circular(
                  30,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    SizedBox(
                      width: 100,
                      child: Image.network(
                        "https://acnhcritterpedia.com/images/ui/fish-transparent.png",
                      ),
                    ),
                    Column(
                      children: [
                        Text("Name: "),
                        Text("Price: "),
                        Text("Rarity: "),
                        Text("Location: "),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
