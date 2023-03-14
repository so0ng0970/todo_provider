// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';

class TodoSearchState {
  final String searchIerm;

  TodoSearchState({
    required this.searchIerm,
  });

  factory TodoSearchState.initial() {
    return TodoSearchState(searchIerm: '');
  }

  @override
  List<Object> get props => [searchIerm];

  @override
  bool get stringify => true;

  TodoSearchState copyWith({
    String? searchIerm,
  }) {
    return TodoSearchState(
      searchIerm: searchIerm ?? this.searchIerm,
    );
  }
}

class TodoSearch with ChangeNotifier {
  TodoSearchState _state = TodoSearchState.initial();
  TodoSearchState get state => _state;

  void setsearchTerm(String newSearchTerm) {
    _state = _state.copyWith(searchIerm: newSearchTerm);
    notifyListeners();
  }
}
