import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../bloc/participation_bloc/participation_bloc.dart';
import '../widgets/list_tile_participation.dart';

class ListParticipationPage extends StatelessWidget {
  const ListParticipationPage({
    super.key,
    this.date,
    this.datePicker,
    required this.departmentId,
    this.status,
  });
  final int departmentId;
  final DateTime? date;
  final Widget? datePicker;
  final String? status;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (datePicker != null) datePicker!,
          Expanded(
            child: BlocBuilder<ParticipationBloc, ParticipationState>(
              builder: (context, state) {
                return state.map(
                  loading: (_) => const Center(
                    child: CircularProgressIndicator(),
                  ),
                  loadedParticipation: (state) {
                    return ListView.separated(
                      itemCount: state.participation.length,
                      separatorBuilder: (context, _) {
                        return SizedBox(
                          height: 15.0,
                        );
                      },
                      itemBuilder: (context, index) {
                        return ListTileParticipation(
                          participation: state.participation[index],
                          departmentId: departmentId,
                          date: date,
                          status: status,
                        );
                      },
                    );
                  },
                  failure: (failure) => Center(
                    child: Text(failure.message),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
