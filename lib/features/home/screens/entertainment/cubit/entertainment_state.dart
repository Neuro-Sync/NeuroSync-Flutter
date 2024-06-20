part of 'entertainment_cubit.dart';
// ignore_for_file: camel_case_types

class EntertainmentState {
  final String? exception;

  EntertainmentState({
    this.exception,
  });

  EntertainmentState copyWith({
    String? exception,
  }) {
    return EntertainmentState(
      exception: exception ?? this.exception,
    );
  }
}
