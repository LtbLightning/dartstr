enum EventKind {
  info(13194),
  request(23194),
  response(23195),
  notification(23196);

  final int kind;

  const EventKind(this.kind);

  factory EventKind.fromValue(int value) {
    return EventKind.values.firstWhere(
      (kind) => kind.kind == value,
      orElse: () => throw ArgumentError('Invalid event kind value: $value'),
    );
  }
}
