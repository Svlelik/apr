import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ScrollableListView extends StatefulWidget {
  const ScrollableListView({
    required this.itemBuilder,
    required this.itemCount,
    this.noItemsBuilder,
    this.onReachedEnd,
    this.onRefresh,
    this.padding,
    super.key,
  });

  final int itemCount;

  final EdgeInsets? padding;
  final AsyncCallback? onRefresh;
  final VoidCallback? onReachedEnd;
  final WidgetBuilder? noItemsBuilder;

  final IndexedWidgetBuilder itemBuilder;

  @override
  State<ScrollableListView> createState() => _ScrollableListViewState();
}

class _ScrollableListViewState extends State<ScrollableListView> {
  late final ScrollController _scrollController;
  static const kDefaultScrollDelta = 512.0;

  @override
  void initState() {
    super.initState();

    _scrollController = ScrollController();
    _scrollController.addListener(_onReachedEnd);
  }

  void _onReachedEnd() {
    final isReachedEnd = kDefaultScrollDelta >=
        (_scrollController.position.maxScrollExtent -
            _scrollController.position.pixels);

    if (isReachedEnd) {
      widget.onReachedEnd?.call();
    }
  }

  Future<void> _onRefresh() async {
    await widget.onRefresh?.call();
    // if (_isRefreshProcessing) return;
    // if (_isReachedEndProcessing) return;

    // final result = widget.onRefresh?.call();
    // if (result is! Future) return;

    // _isRefreshProcessing = true;
    // await result.whenComplete(() {
    //   Future.delayed(
    //     kScrollEventsThrottleDuration,
    //     () => _isRefreshProcessing = false,
    //   );
    // });
  }

  @override
  Widget build(BuildContext context) {
    final body = CustomScrollView(
      controller: _scrollController,
      slivers: [
        SliverPadding(
          padding: widget.padding ?? EdgeInsets.zero,
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate(
              widget.itemBuilder,
              childCount: widget.itemCount,
            ),
          ),
        ),
        if (widget.noItemsBuilder != null && widget.itemCount == 0)
          SliverFillRemaining(
            child: widget.noItemsBuilder?.call(context),
          ),
      ],
    );

    return widget.onRefresh == null
        ? body
        : RefreshIndicator(onRefresh: _onRefresh, child: body);
  }

  @override
  void dispose() {
    _scrollController
      ..removeListener(_onReachedEnd)
      ..dispose();

    super.dispose();
  }
}
