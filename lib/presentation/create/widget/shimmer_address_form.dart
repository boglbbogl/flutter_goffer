import 'package:flutter/material.dart';
import 'package:flutter_goffer/_constant/widgets/theme.dart';
import 'package:shimmer/shimmer.dart';

Shimmer shimmerAddressForm() {
  return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Padding(
              padding:
                  const EdgeInsets.only(top: 8, bottom: 8, left: 18, right: 18),
              child: Container(
                width: size.width * 0.9,
                height: size.height * 0.1,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                        color: const Color.fromRGBO(195, 195, 195, 1))),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: size.width * 0.4,
                        height: size.height * 0.02,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            color: Colors.black),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        width: size.width * 0.7,
                        height: size.height * 0.02,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }));
}
