import 'package:apr/src/core/_core.dart';
import 'package:apr_sdk/apr_sdk.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:opo_ui_kit_r/ui_kit.dart';

const String storyDescription = 'description';

class StoryGenerator {
  StoryGenerator({
    required this.imagePreview,
    required this.description,
  });

  final Widget imagePreview;
  final Widget description;
}

List<NeoStoryGroup<int, int>> getNeoStoryGroup(
  BuildContext context,
  StoriesResponseModel storiesResponseModel,
) {
  if (storiesResponseModel.data.isEmpty) {
    return [];
  }

  final List<StoryDataModel> sortedStories =
      List.from(storiesResponseModel.data)
        ..sort(
          (a, b) => a.attributes.order.compareTo(b.attributes.order),
        );

  return sortedStories.mapIndexed((index, storyTab) {
    final storyAttributes = storyTab.attributes;
    final items = storyAttributes.items;

    final stories = items.map((item) {
      final description = item.bodyText;
      final imagePreviewUrl = DocumentUtils.getAssetPath(
        item.background?.data!.attributes.url ?? '',
      );
      final backgroundVideo = item.backgroundVideo;

      if (backgroundVideo != null) {
        return NeoStoryVideo<int>.network(
          dataSource: backgroundVideo.data?.attributes.url ?? '',
          meta: {
            'storyDescription': Flex(
              direction: Axis.vertical,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: Insets.l),
                  decoration: BoxDecoration(
                    color: context.color.constant.white,
                    borderRadius: BorderRadius.circular(Insets.l),
                  ),
                  child: Markdown(shrinkWrap: true, data: description ?? ''),
                ),
              ],
            ),
          },
          data: null,
        );
      }

      return NeoStoryImage<int>(
        imageProvider: CachedNetworkImageProvider(imagePreviewUrl),
        duration: Duration(seconds: item.duration),
        meta: {
          'storyDescription': Flex(
            direction: Axis.vertical,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: Insets.l),
                decoration: BoxDecoration(
                  color: context.color.constant.white,
                  borderRadius: BorderRadius.circular(Insets.l),
                ),
                child: Markdown(
                  shrinkWrap: true,
                  data: description ?? '',
                ),
              ),
            ],
          ),
        },
        data: null,
      );
    }).toList();

    final iconUrl = storyAttributes.icon.data?.attributes.url;

    return NeoStoryGroup<int, int>(
      stories: stories,
      image: imagePreviewBuilder(
        Image.network(DocumentUtils.getAssetPath(iconUrl ?? '')),
        borderColor: storyAttributes.borderColor,
      ),
      data: index,
    );
  }).toList();
}

Color parseColor(
  String? colorString, {
  Color defaultColor = const Color(0xff1AC057),
}) {
  try {
    String color = colorString ?? '';

    if (color.isNotEmpty) {
      if (color.startsWith('#')) {
        color = color.substring(1);
      }
      if (color.length == 6) {
        color = 'FF$color';
      }
      return Color(int.parse(color, radix: 16));
    }
  } catch (e) {
    debugPrint('Incorrect color: $colorString');
  }
  return defaultColor;
}

Widget imagePreviewBuilder(Image img, {String? borderColor}) {
  return Container(
    width: 108,
    height: 108,
    clipBehavior: Clip.antiAlias,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(18),
      border: Border.all(
        width: 2.57,
        color: parseColor(borderColor),
      ),
    ),
    alignment: Alignment.center,
    child: SizedBox(
      width: 100,
      height: 100,
      child: img,
    ),
  );
}

Widget generateDescriptionLine(
  BuildContext context,
  String text, {
  bool isTitle = false,
}) {
  return Padding(
    padding: EdgeInsets.only(
      top: isTitle ? Insets.l : Insets.zero,
      bottom: Insets.s,
    ),
    child: Text(
      text,
      style: isTitle ? context.text.headline.medium : context.text.body.medium,
    ),
  );
}
