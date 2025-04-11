import 'package:apr/src/features/operations/_operations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:opo_ui_kit_r/ui_kit.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  late HistoryBloc _historyBloc;

  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    _historyBloc = OperationsInjection.sl<HistoryBloc>();
    _historyBloc.add(const HistoryEvent.getHistory());

    _scrollController.addListener(_scrollListener);
  }

  void _scrollListener() {
    final isNeedLoad = _scrollController.position.pixels >=
        (_scrollController.position.maxScrollExtent - 150);

    if (isNeedLoad) {
      _historyBloc.add(const HistoryEvent.getMore());
    }
  }

  @override
  void dispose() {
    _scrollController
      ..removeListener(_scrollListener)
      ..dispose();
    _historyBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HistoryBloc>.value(
      value: _historyBloc,
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UiAprHeaderMobileBar(
              title: OperationsI18n.historyPageTitle,
              onBackTap: context.pop,
            ),
            const SizedBox(height: Insets.l),
            const OperationTypeList(),
            const SizedBox(height: Insets.l),
            UiDropDownDateRangeMobile(
              onChanged: (range) {
                _historyBloc.add(HistoryEvent.setDateTimeRange(range));
              },
            ),
            const SizedBox(height: Insets.l),
            Expanded(
              child: BlocBuilder<HistoryBloc, HistoryState>(
                builder: (context, state) => ListView.separated(
                  controller: _scrollController,
                  physics: state.isLoading && state.operations.isEmpty
                      ? const NeverScrollableScrollPhysics()
                      : null,
                  padding: const EdgeInsets.fromLTRB(
                    Insets.l,
                    0,
                    Insets.l,
                    Insets.l,
                  ),
                  itemCount: state.isLoading
                      ? state.operations.isNotEmpty
                          ? state.operations.length + 3
                          : 10
                      : state.operations.length,
                  itemBuilder: (context, index) {
                    if (state.isLoading && state.operations.isEmpty) {
                      return const UiAprBalanceHistoryCardLoader();
                    } else {
                      return index > (state.operations.length - 1)
                          ? const UiAprBalanceHistoryCardLoader()
                          : UiAprBalanceHistoryCard(
                              operation: state.operations[index],
                            );
                    }
                  },
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: Insets.s),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
