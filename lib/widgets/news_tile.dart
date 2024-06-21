import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/widgets/web_view.dart';
import '../models/artical_model.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';

// cached network image
class NewsTile extends StatelessWidget {
  NewsTile({super.key, required this.articalModel});
  final customCacheManager = CacheManager(
    Config(
      'customCacheKey',
      stalePeriod: const Duration(days: 7),
      maxNrOfCacheObjects: 100,
    ),
  );

  final ArticalModel articalModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: articalModel.image == null
              ? Image.asset(width: 600, height: 200, 'assets/404_12.jpg')
              : GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => WebView(
                          articalModel: articalModel,
                        ),
                      ),
                    );
                  },
                  child: CachedNetworkImage(
                    cacheManager: customCacheManager,
                    imageUrl: articalModel.image!,
                    placeholder: (context, url) =>
                        const Center(child: CircularProgressIndicator()),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                    fadeInDuration: const Duration(milliseconds: 500),
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          articalModel.title!,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: Colors.black87,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          articalModel.subTitle ?? 'there is no subtitle',
          maxLines: 2,
          style: const TextStyle(color: Colors.grey, fontSize: 14),
        )
      ],
    );
  }
}
