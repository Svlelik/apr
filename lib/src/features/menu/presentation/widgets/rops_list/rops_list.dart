import 'package:apr/src/core/features/onboarding/_onboarding.dart';
import 'package:apr/src/features/menu/presentation/widgets/rops_list/rop_card_widget.dart';
import 'package:apr_sdk/apr_sdk.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:opo_ui_kit_r/ui_kit.dart';

const splitStrapiContent = r'^(\d+)\.\s+(.+?)\s+-\s+(.+)$';

class RopsList extends StatelessWidget {
  const RopsList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RopCubit, RopState>(
      builder: (context, state) {
        if (state.status.isFetchingInProgress) {
          return const Center(child: CircularProgressIndicator());
        }

        if (!state.status.isFetchingSuccess) {
          return const SizedBox.shrink();
        }

        final RopDatumModel? rop = state.ropResponse?.firstWhere(
          (element) => element.attributes?.name == StaticContentFaqRopEnum.rop,
        );

        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: Insets.l,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _buildCard(rop?.attributes?.data?.items?[0]),
                _buildCard(rop?.attributes?.data?.items?[1]),
                _buildDetailsSection(
                  context,
                  rop?.attributes?.data?.items?.sublist(2),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildCard(RopItemModel? item) {
    if (item == null) return const SizedBox.shrink();
    return Padding(
      padding: const EdgeInsets.only(bottom: Insets.s),
      child: RopCardWidget(
        title: item.name ?? '',
        description: item.value?[0] ?? '',
        width: double.infinity,
      ),
    );
  }

  Widget _buildDetailsSection(
    BuildContext context,
    List<RopItemModel>? items,
  ) {
    if (items == null) return const SizedBox.shrink();

    return Container(
      padding:
          const EdgeInsets.symmetric(vertical: Insets.l, horizontal: Insets.xl),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(Insets.l)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            items[0].name ?? '',
            style: context.text.title.medium,
          ),
          _buildCardWithNumber(
            context,
            items[0].value?[0],
            true,
            false,
          ),
          _buildBottomCardsWithNumber(
            context,
            items[0].value?.sublist(1),
          ),
          _buildBottomPart(context, items[1]),
        ],
      ),
    );
  }

  Widget _buildCardWithNumber(
    BuildContext context,
    String? text,
    bool first,
    bool last,
  ) {
    if (text == null) {
      return const SizedBox.shrink();
    }
    return Container(
      margin: EdgeInsets.only(
        top: first ? Insets.l : Insets.s,
        right: !first && !last ? Insets.s : Insets.zero,
      ),
      padding: const EdgeInsets.symmetric(
        vertical: Insets.l,
        horizontal: Insets.l,
      ),
      decoration: BoxDecoration(
        color: context.color.primary.primaryContainer,
        borderRadius: const BorderRadius.all(Radius.circular(Insets.l)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            _splitSentence(text, 0),
            style: context.text.headline.large.copyWith(
              color: context.color.primary.primary,
              fontSize: 76,
            ),
          ),
          const SizedBox(width: Insets.s),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  _splitSentence(text, 1),
                  style: context.text.title.medium,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: Insets.s),
                  child: Text(
                    _splitSentence(text, 2),
                    style: context.text.body.medium,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBottomCardsWithNumber(
    BuildContext context,
    List<String>? texts,
  ) {
    if (texts == null) {
      return const SizedBox.shrink();
    }
    return Column(
      children: List.generate(texts.length, (index) {
        return _buildCardWithNumber(
          context,
          texts[index],
          false,
          texts.length - 1 == index,
        );
      }),
    );
  }

  String _splitSentence(String? sentence, int dataIndex) {
    if (sentence == null) return '';

    final regExp = RegExp(splitStrapiContent);
    final match = regExp.firstMatch(sentence);

    if (match != null) {
      String thirdPart = match.group(3)!;
      thirdPart = thirdPart[0].toUpperCase() + thirdPart.substring(1);
      return [match.group(1)!, match.group(2)!, thirdPart][dataIndex];
    } else {
      return '';
    }
  }

  Widget _buildBottomPart(
    BuildContext context,
    RopItemModel? item,
  ) {
    if (item == null) {
      return const SizedBox.shrink();
    }

    final text = Padding(
      padding: const EdgeInsets.only(left: Insets.m),
      child: Text(
        (item.name ?? '').replaceFirst(', ', ',\n'),
        style: context.text.headline.small,
      ),
    );
    return Padding(
      padding: const EdgeInsets.only(top: Insets.xl),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          text,
          Padding(
            padding: const EdgeInsets.only(
              top: Insets.l,
            ),
            child: UiFilledButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              label: OnboardingI18n.ropSignInButtonTitle,
              border: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  BorderRadiusInsets.l,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
