extension ListExtensions<E> on List<E> {
  List<E> push(E value) {
    add(value);
    return this;
  }
}
