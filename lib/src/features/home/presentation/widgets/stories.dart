import 'package:apr/src/features/home/_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:opo_ui_kit_r/ui_kit.dart';
import 'package:shimmer/shimmer.dart';

class UiStories extends StatelessWidget {
  const UiStories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StoriesBloc, StoriesState>(
      builder: (context, state) {
        if (state.status.isFetchingSuccess && state.storesResponse != null) {
          return NeoStories<int, int>(
            controller: NeoStoryController<int, int>(
              NeoStoryState(),
              groups: getNeoStoryGroup(context, state.storesResponse!),
            ),
            physics: const AlwaysScrollableScrollPhysics(),
            progressIndicatorBuilder: (story) => Shimmer.fromColors(
              baseColor: Colors.grey.shade300,
              highlightColor: Colors.grey.shade200,
              child: const SizedBox.expand(),
            ),
            progressIndicatorPadding: const EdgeInsets.fromLTRB(
              Insets.xl,
              Insets.l,
              Insets.xl,
              Insets.m,
            ),
            closeIndicatorPadding: const EdgeInsets.only(right: Insets.xl),
            descriptionPadding: const EdgeInsets.symmetric(horizontal: 20),
            previewBuilder: (group, index) => group.image,
            overlayIndicatorBuilder: () => Shimmer.fromColors(
              baseColor: Colors.grey.shade300,
              highlightColor: Colors.grey.shade200,
              child: const SizedBox.expand(),
            ),
            errorLoadingBuilder: (story) {
              return const SizedBox.shrink();
            },
            descriptionBuilder: (group, storyIndex, controller) => Flex(
              direction: Axis.vertical,
              children: [
                ValueListenableBuilder(
                  valueListenable: controller,
                  builder: (context, value, child) {
                    return Visibility(
                      visible: !controller.isDismissed,
                      child: group.stories[storyIndex].meta['storyDescription']
                          as Flex,
                    );
                  },
                ),
              ],
            ),
          );
        }

        return const Center(child: SizedBox.shrink());
      },
    );
  }
}
