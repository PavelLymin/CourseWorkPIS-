part of 'participation_bloc.dart';

@freezed
class ParticipationState with _$ParticipationState {
  const factory ParticipationState.loading() = _Loading;

  const factory ParticipationState.loadedParticipation({
    required List<ParticipationModel> participation,
  }) = _LoadedParticipation;

  const factory ParticipationState.failure({
    required String message,
  }) = _Failure;
}
