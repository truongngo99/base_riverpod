import 'package:base_riverpod/domain/entity/map_pin_response.dart';
import 'package:base_riverpod/gen/assets.gen.dart';
import 'package:base_riverpod/profile/presentation/notifier/travel_spot_tab_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TravelSpotTabScreen extends ConsumerWidget {
  TravelSpotTabScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return _buildMapPinWidget(ref);
  }

  Widget _buildMapPinWidget(WidgetRef ref) {
    final travelSpotData = ref.watch(travelSpotNotifierProvider).mappin;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const Text(
              "案内できる観光地",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: GestureDetector(
                  onTap: () {},
                  child:
                      Assets.images.editProfile.image(width: 24, height: 24)),
            ),
          ],
        ),
        const SizedBox(height: 20),
        for (var pin in travelSpotData) _buildMapPinElement(pin)
      ]),
    );
  }

  Widget _buildMapPinElement(TravelSpotData data) {
    return Card(
      elevation: 5,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          if (data.imageUrl != null)
            FadeInImage.assetNetwork(
              placeholder: Assets.images.placeholderVjp.path,
              image: data.imageUrl ??
                  "https://www.publicdomainpictures.net/pictures/280000/nahled/not-found-image-15383864787lu.jpg",
              fit: BoxFit.fill,
            ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(children: [
                  Assets.images.blackMapPin
                      .image(width: 30, height: 30, color: Colors.black),
                  const SizedBox(width: 10),
                  Text(data.name.ja ?? "",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16))
                ]),
                Html(data: data.description.ja)
              ],
            ),
          )
        ],
      ),
    );
  }
}
