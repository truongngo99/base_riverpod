import 'package:auto_route/auto_route.dart';
import 'package:base_riverpod/core/extension/imageX.dart';
import 'package:base_riverpod/domain/entity/skill_response.dart';
import 'package:base_riverpod/gen/assets.gen.dart';
import 'package:base_riverpod/gen/colors.gen.dart';
import 'package:base_riverpod/profile/presentation/edit_tab_builder.dart';
import 'package:base_riverpod/profile/presentation/notifier/skill_tab_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class EditSkillScreen extends ConsumerStatefulWidget {
  EditSkillScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<EditSkillScreen> createState() => _EditSkillScreenState();
}

class _EditSkillScreenState extends ConsumerState<EditSkillScreen> {
  Map<String, String> dropDownData = {
    "beginner": "初心者",
    "elementary": "小学校",
    "advanced": "高度",
    "imediately": "中級",
    "expert": "エキスパート",
  };

  @override
  Widget build(BuildContext context) {
    return EditScreenBuilder(
      body: _buildBody(),
      topTitle: 'スキル',
    );
  }

  Widget _buildBody() {
    return Column(children: [
      _buildDomesticCheckBox(),
      _buildGeneralCheckBox(),
      _buildToeicWidget(),
      _buildTourismEnglishCheckBox(),
      _buildTravelGeographyWidget(),
      _buildWorldHeritageCheckBox(),
      _buildOtherDegreeWiget()
    ]);
  }

  Widget _buildDomesticCheckBox() {
    final skill = ref.watch(skillNotifierProvider).editableSkill;
    return CheckboxListTile(
        title: const Text(
          '旅行業務取扱管理者（国内）',
          style: TextStyle(fontSize: 16, color: Colors.black),
        ),
        controlAffinity: ListTileControlAffinity.leading,
        selected: skill?.domesticBusinessManager == "yes",
        value: skill?.domesticBusinessManager == "yes",
        checkColor: Colors.white,
        activeColor: ColorName.orangePrimary,
        onChanged: (bool? value) {
          setState(() {
            if (value != null) {
              skill?.domesticBusinessManager = value ? "yes" : "no";
            }
          });
        });
  }

  Widget _buildGeneralCheckBox() {
    final skill = ref.watch(skillNotifierProvider).editableSkill;
    return CheckboxListTile(
        title: const Text(
          '旅行業務取扱管理者（総合）',
          style: TextStyle(fontSize: 16, color: Colors.black),
        ),
        controlAffinity: ListTileControlAffinity.leading,
        selected: skill?.generalBusinessManager == "yes",
        value: skill?.generalBusinessManager == "yes",
        checkColor: Colors.white,
        activeColor: ColorName.orangePrimary,
        onChanged: (bool? value) {
          setState(() {
            if (value != null) {
              skill?.generalBusinessManager = value ? "yes" : "no";
            }
          });
        });
  }

  Widget _buildToeicWidget() {
    var skill = ref.watch(skillNotifierProvider).editableSkill;
    var toeicScore = ref.watch(skillNotifierProvider).toeicScore;
    return Column(
      children: [
        CheckboxListTile(
            title: const Text(
              "TOEIC",
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
            controlAffinity: ListTileControlAffinity.leading,
            selected: skill?.toeic != "",
            value: skill?.toeic != "",
            checkColor: Colors.white,
            activeColor: ColorName.orangePrimary,
            onChanged: (bool? value) {
              setState(() {
                if (value != null) {
                  skill?.toeic = value ? toeicScore : "";
                }
              });
            }),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: TextField(
            keyboardType: TextInputType.number,
            enabled: skill?.toeic != "",
            autofocus: false,
            decoration: InputDecoration(
                suffix: const Text("点", style: TextStyle(color: Colors.black)),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6.0),
                    borderSide: const BorderSide(color: ColorName.grey)),
                contentPadding: const EdgeInsets.symmetric(horizontal: 8),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6.0),
                    borderSide:
                        const BorderSide(color: ColorName.orangePrimary)),
                filled: true,
                hintStyle: const TextStyle(color: ColorName.grey),
                hintText: "TOEIC",
                fillColor: Colors.white70),
            onChanged: (text) {
              skill?.toeic = text;
            },
          ),
        )
      ],
    );
  }

  Widget _buildTourismEnglishCheckBox() {
    final skill = ref.watch(skillNotifierProvider).editableSkill;
    return CheckboxListTile(
        title: const Text(
          '観光英語検定',
          style: TextStyle(fontSize: 16, color: Colors.black),
        ),
        controlAffinity: ListTileControlAffinity.leading,
        selected: skill?.tourismEnglish == "yes",
        value: skill?.tourismEnglish == "yes",
        checkColor: Colors.white,
        activeColor: ColorName.orangePrimary,
        onChanged: (bool? value) {
          setState(() {
            if (value != null) {
              skill?.tourismEnglish = value ? "yes" : "no";
            }
          });
        });
  }

  Widget _buildTravelGeographyWidget() {
    var skill = ref.watch(skillNotifierProvider).editableSkill;
    var travelGeographyInput = ref.watch(skillNotifierProvider).travelGeography;
    return Column(
      children: [
        CheckboxListTile(
            title: const Text(
              "旅行地理検定",
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
            controlAffinity: ListTileControlAffinity.leading,
            selected: skill?.travelGeography != "",
            value: skill?.travelGeography != "",
            checkColor: Colors.white,
            activeColor: ColorName.orangePrimary,
            onChanged: (bool? value) {
              setState(() {
                if (value != null) {
                  skill?.travelGeography = value ? travelGeographyInput : "";
                }
              });
            }),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: DropdownButtonFormField<String>(
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6.0),
                    borderSide: const BorderSide(color: ColorName.grey)),
                contentPadding: const EdgeInsets.symmetric(horizontal: 8),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6.0),
                    borderSide:
                        BorderSide(color: Colors.blue[900] ?? Colors.blue)),
                filled: true,
                fillColor: Colors.white),
            focusColor: ColorName.orangePrimary,
            hint: const Text("選択してください"),
            value: dropDownData[travelGeographyInput],
            items: dropDownData.entries
                .map((e) => e.value)
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(value: value, child: Text(value));
            }).toList(),
            onChanged: skill?.travelGeography != ""
                ? (String? newValue) {
                    setState(() {
                      if (newValue != null && newValue != "") {
                        final valueFromKey = dropDownData.keys
                            .firstWhere((k) => dropDownData[k] == newValue);
                        skill?.travelGeography = valueFromKey;
                        travelGeographyInput = valueFromKey;
                      } else {
                        skill?.travelGeography = "";
                        travelGeographyInput = "";
                      }
                    });
                  }
                : null,
          ),
        )
      ],
    );
  }

  Widget _buildWorldHeritageCheckBox() {
    final skill = ref.watch(skillNotifierProvider).editableSkill;
    return CheckboxListTile(
        title: const Text(
          '世界遺産検定',
          style: TextStyle(fontSize: 16, color: Colors.black),
        ),
        controlAffinity: ListTileControlAffinity.leading,
        selected: skill?.worldHeritage == "yes",
        value: skill?.worldHeritage == "yes",
        checkColor: Colors.white,
        activeColor: ColorName.orangePrimary,
        onChanged: (bool? value) {
          setState(() {
            if (value != null) {
              skill?.worldHeritage = value ? "yes" : "no";
            }
          });
        });
  }

  Widget _buildOtherDegreeWiget() {
    var otherDegree =
        ref.watch(skillNotifierProvider).editableSkill?.ortherDegrees.ja;
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("その他資格（話せる外国語など）",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
          if (otherDegree?.length != null && otherDegree!.isNotEmpty)
            ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.all(0),
                itemCount: otherDegree.length,
                itemBuilder: (context, index) {
                  return _buildRemoveableTextfield(
                      index, otherDegree[index] ?? "ko tim thay");
                }),
          SizedBox(
            width: double.infinity,
            height: 44,
            child: TextButton(
              onPressed: () {
                ref.read(skillNotifierProvider.notifier).cloneNewDegree();
              },
              // ignore: sort_child_properties_last
              child: const Text(
                'Add',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  const Color(0xFFE74E00),
                ),
                shape: MaterialStateProperty.all<OutlinedBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 44,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    ColorName.orangePrimaryMaterial),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              child: const Text('保存'),
              onPressed: () async {
                await ref.read(skillNotifierProvider.notifier).saveEditSkill();
                context.router.pop(true);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRemoveableTextfield(int index, String text) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: TextFormField(
              initialValue: text,
              keyboardType: TextInputType.number,
              autofocus: false,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6.0),
                      borderSide: const BorderSide(color: ColorName.grey)),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 8),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6.0),
                      borderSide:
                          const BorderSide(color: ColorName.orangePrimary)),
                  filled: true,
                  fillColor: Colors.white70),
              onChanged: (text) {
                ref
                    .read(skillNotifierProvider.notifier)
                    .editOtherDegree(index, text);
              },
            ),
          ),
          const SizedBox(width: 6),
          GestureDetector(
              onTap: () {
                ref
                    .read(skillNotifierProvider.notifier)
                    .removeOtherDegree(index);
              },
              child: Assets.images.delete.image().iconify(36))
        ],
      ),
    );
  }
}
