import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/components/task_item/task_item_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'task_list_model.dart';
export 'task_list_model.dart';

class TaskListWidget extends StatefulWidget {
  const TaskListWidget({
    super.key,
    required this.tasks,
    required this.status,
  });

  final List<TaskStruct>? tasks;
  final TaskStatus? status;

  @override
  State<TaskListWidget> createState() => _TaskListWidgetState();
}

class _TaskListWidgetState extends State<TaskListWidget> {
  late TaskListModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TaskListModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        final tasks = widget!.tasks!
            .where((e) => () {
                  if (widget!.status == TaskStatus.assigned) {
                    return (e.status == TaskStatus.assigned);
                  } else if (widget!.status == TaskStatus.created) {
                    return (e.status == TaskStatus.created);
                  } else {
                    return (e.status == TaskStatus.completed);
                  }
                }())
            .toList();

        return Column(
          mainAxisSize: MainAxisSize.max,
          children: List.generate(tasks.length, (tasksIndex) {
            final tasksItem = tasks[tasksIndex];
            return wrapWithModel(
              model: _model.taskItemModels.getModel(
                (tasksItem.toMap()).toString(),
                tasksIndex,
              ),
              updateCallback: () => safeSetState(() {}),
              child: TaskItemWidget(
                key: Key(
                  'Keyjik_${(tasksItem.toMap()).toString()}',
                ),
                task: tasksItem,
                onComplete: () async {},
              ),
            );
          }).divide(SizedBox(height: 20.0)).addToStart(SizedBox(height: 12.0)),
        );
      },
    );
  }
}
