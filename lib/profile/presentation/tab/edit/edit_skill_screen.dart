import 'package:base_riverpod/profile/presentation/edit_tab_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class EditSkillScreen extends ConsumerWidget {
  const EditSkillScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return EditScreenBuilder(body: _buildBody(), topTitle: 'スキル',);
  }

  Widget _buildBody() {
    return Text("screen sua ne");
  }
}