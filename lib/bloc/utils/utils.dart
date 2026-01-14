import 'package:stream_transform/stream_transform.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

const throttleDuration = Duration(milliseconds: 100);
const debounceDuration = Duration(milliseconds: 350);

EventTransformer<E> throttleDroppable<E>(Duration duration) {
  return (events, mapper) {
    return droppable<E>().call(events.throttle(duration), mapper);
  };
}

EventTransformer<E> debounce<E>(Duration duration) {
  return (events, mapper) => events.debounce(duration).asyncExpand(mapper);
}

int getNewKey(List<int>? keys, {int startFrom = 1}) {
  return (keys?.last ?? startFrom - 1) + 1;
}

bool calcIsLastPage(List<dynamic> newItems) {
  return newItems.isEmpty;
}
