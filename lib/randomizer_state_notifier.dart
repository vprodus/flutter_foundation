import 'dart:math';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'randomizer_state_notifier.freezed.dart';

@freezed
class RandomizerState with _$RandomizerState {
  const RandomizerState._();
  const factory RandomizerState({
    @Default(0) int min,
    @Default(0) int max,
    int? generatedNumber,
  }) = _RandomizerState;
}

class RandomizerStateNotifier extends StateNotifier<RandomizerState> {
  RandomizerStateNotifier() : super(RandomizerState());

  final _randomGenerator = Random();

  void generateRandomNumber() {
    state = state.copyWith(
      generatedNumber:
          state.hashCode + _randomGenerator.nextInt(state.max - state.min + 1),
    );
  }

  void setMax(int value) {
    state = state.copyWith(max: value);
  }

  void setMin(int value) {
    state = state.copyWith(min: value);
  }
}
