import 'package:apr/src/core/_core.dart';
import 'package:apr/src/features/bonuses/core/_core.dart';
import 'package:flutter/material.dart';
import 'package:opo_ui_kit_r/ui_kit.dart';

class BonusesConditionsPage extends StatefulWidget {
  const BonusesConditionsPage({super.key});

  @override
  State<BonusesConditionsPage> createState() => _BonusesConditionsPageState();
}

class _BonusesConditionsPageState extends InjectableState<BonusesConditionsPage,
    ConditionsBloc, ConditionsState> {
  @override
  Widget builder(BuildContext context, ConditionsState state) {
    if (state.documents?.data != null) {
      return ListView(
        shrinkWrap: true,
        children: state.documents!.data!.map(
          (document) {
            final attributes = document.attributes;
            final filePath = attributes?.link ??
                attributes?.media?.data?.attributes.url ??
                '';
            return _FileItem(
              title: BonusesI18n.documentTitle(attributes?.title ?? ''),
              viewLink: filePath,
              downloadLink: filePath,
            );
          },
        ).toList(),
      );
    }

    return const SizedBox.shrink();
  }
}

class _FileItem extends StatefulWidget {
  const _FileItem({
    required this.title,
    required this.viewLink,
    required this.downloadLink,
  });

  final String title;
  final String viewLink;
  final String downloadLink;

  @override
  State<_FileItem> createState() => _FileItemState();
}

class _FileItemState extends State<_FileItem> {
  bool _isIconHover = false;
  bool _isTitleHover = false;

  @override
  Widget build(BuildContext context) {
    return UiCard(
      margin: const EdgeInsets.symmetric(
        vertical: Insets.s,
        horizontal: Insets.l,
      ),
      padding: const EdgeInsets.all(Insets.xl),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: InkWell(
              hoverColor: Colors.transparent,
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onHover: (hover) => setState(() {
                _isTitleHover = hover;
              }),
              onTap: () {
                DocumentUtils.openDocumentNewTab(widget.viewLink);
              },
              child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  Icon(
                    UiIcons.file,
                    color: _isTitleHover
                        ? context.color.primary.primary
                        : context.color.constant.black,
                  ),
                  const SizedBox(width: Insets.s),
                  Text(
                    widget.title,
                    style: context.text.title.medium.copyWith(
                      color: _isTitleHover
                          ? context.color.primary.primary
                          : context.color.constant.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onHover: (hover) => setState(() {
              _isIconHover = hover;
            }),
            customBorder: const CircleBorder(),
            onTap: () {
              DocumentUtils.downloadDocument(widget.downloadLink);
            },
            child: Container(
              padding: const EdgeInsets.all(Insets.m),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _isIconHover
                    ? context.color.primary.primary
                    : context.color.surface.surfaceContainerLow,
              ),
              child: Icon(
                UiIcons.download1,
                color: _isIconHover
                    ? context.color.constant.white
                    : context.color.constant.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
