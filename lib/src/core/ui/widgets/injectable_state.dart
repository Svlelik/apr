import 'package:apr/src/core/di/core_injection_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class InjectableState<T extends StatefulWidget, G extends BlocBase<S>,
    S> extends State<T> {
  InjectableState({
    void Function(G cubit)? onCubitCreated,
  })  : cubit = ICoreInjection.sl<G>(),
        _onCubitCreated = onCubitCreated,
        _shouldProvide = true,
        super();
  @protected
  late G cubit;

  final void Function(G cubit)? _onCubitCreated;

  final bool _shouldProvide;

  @override
  void didChangeDependencies() {
    try {
      // ignore: unnecessary_statements
      cubit;
    } on Exception catch (_) {
      // ignore: lines_longer_than_80_chars
      throw 'At first you need init the cubit in [initState], [didChangeDependencies] or in [getIt]';
    }
    super.didChangeDependencies();
  }

  Widget builder(BuildContext context, S state);

  void listener(BuildContext context, S state) {}

  bool buildWhen(S previous, S current) => true;

  bool listenWhen(S previous, S current) => true;

  @override
  Widget build(BuildContext context) => BlocProvider<G>(
        create: (context) {
          _onCubitCreated?.call(cubit);
          return cubit;
        },
        child: BlocConsumer<G, S>(
          bloc: _shouldProvide ? null : cubit,
          buildWhen: buildWhen,
          listenWhen: listenWhen,
          builder: builder,
          listener: listener,
        ),
      );
}
