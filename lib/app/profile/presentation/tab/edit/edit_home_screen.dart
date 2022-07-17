import 'package:auto_route/auto_route.dart';
import 'package:base_riverpod/app/profile/presentation/edit_tab_builder.dart';
import 'package:base_riverpod/app/profile/presentation/notifier/home_tab_notifier.dart';
import 'package:base_riverpod/core/extension/imageX.dart';
import 'package:base_riverpod/gen/assets.gen.dart';
import 'package:base_riverpod/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:html_editor_enhanced/html_editor.dart';

class EditHomeScreen extends ConsumerStatefulWidget {
  EditHomeScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<EditHomeScreen> createState() => _EditHomeScreenState();
}

class _EditHomeScreenState extends ConsumerState<EditHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return EditScreenBuilder(topTitle: "ホーム", body: _buildBody());
  }

  Widget _buildBody() {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(children: [
        _catchphraseTextField(),
        _selfIntroTextField(),
        _buildTravelOrgWiget(),
        _buildSaveButton()
      ]),
    );
  }

  Widget _catchphraseTextField() {
    final catchpharse =
        ref.watch(profileNotifierProvider).editableGeneralInfo?.catchphrase;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("キャッチフレーズ　",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
        const SizedBox(height: 12),
        TextFormField(
          initialValue: catchpharse?.ja ?? "ko co",
          maxLength: 50,
          buildCounter: textfieldCounter,
          decoration: InputDecoration(
              hintText: "テキスト",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6.0),
                  borderSide: const BorderSide(color: ColorName.grey)),
              contentPadding: const EdgeInsets.symmetric(horizontal: 8),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6.0),
                  borderSide: const BorderSide(color: ColorName.orangePrimary)),
              filled: true,
              fillColor: Colors.white70),
          onChanged: (text) {
            ref
                .read(profileNotifierProvider.notifier)
                .editableGeneralInfo
                ?.catchphrase
                .ja = text;
          },
        ),
      ],
    );
  }

  Widget _selfIntroTextField() {
    final selfIntro = ref
        .watch(profileNotifierProvider)
        .editableGeneralInfo
        ?.selfIntroduction;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("キャッチフレーズ　",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
        const SizedBox(height: 12),
        TextFormField(
          initialValue: selfIntro?.ja ?? "ko co",
          maxLength: 50,
          buildCounter: textfieldCounter,
          decoration: InputDecoration(
              hintText: "テキスト",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6.0),
                  borderSide: const BorderSide(color: ColorName.grey)),
              contentPadding: const EdgeInsets.symmetric(horizontal: 8),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6.0),
                  borderSide: const BorderSide(color: ColorName.orangePrimary)),
              filled: true,
              fillColor: Colors.white70),
          onChanged: (text) {
            ref
                .read(profileNotifierProvider.notifier)
                .editableGeneralInfo
                ?.catchphrase
                .ja = text;
          },
        ),
      ],
    );
  }

  Widget htmlEditor(int index, ValueSetter<String> outputString) {
    var generalInfo = ref
        .read(profileNotifierProvider.notifier)
        .generalInfo
        ?.generalInfos[index]
        .value
        ?.ja;
    final controller = HtmlEditorController();

    return HtmlEditor(
      controller: controller,
      callbacks: Callbacks(onChangeContent: ((input) {
        if (input != null) {
          ref
              .read(profileNotifierProvider.notifier)
              .updateDescriptionField(index, input);
        }
      })),
      htmlEditorOptions: HtmlEditorOptions(
        characterLimit: 500,
        initialText: generalInfo,
      ),
      htmlToolbarOptions: const HtmlToolbarOptions(defaultToolbarButtons: [
        ParagraphButtons(lineHeight: false, caseConverter: false),
        ListButtons(),
        InsertButtons(),
      ]),
      otherOptions: const OtherOptions(
        height: 400,
      ),
    );
  }

  Widget textfieldCounter(
    BuildContext context, {
    required int currentLength,
    required int? maxLength,
    required bool isFocused,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.end, children: [
      Text("$currentLength / $maxLength",
          style: const TextStyle(
              color: ColorName.grey, fontWeight: FontWeight.bold, fontSize: 14))
    ]);
  }

  Widget _buildTravelOrgWiget() {
    var travelOrg = ref
        .watch(profileNotifierProvider)
        .editableGeneralInfo
        ?.travelOrganizations
        .ja;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: const [
            Text("所属団体",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(width: 12),
            Text("任意",
                style: TextStyle(
                  fontSize: 12,
                  height: 1.5,
                  decoration: TextDecoration.underline,
                  decorationThickness: 3,
                  decorationColor: Colors.grey,
                  shadows: [Shadow(color: Colors.black, offset: Offset(0, -3))],
                  color: Colors.transparent,
                )),
          ],
        ),
        if (travelOrg?.length != null && travelOrg!.isNotEmpty)
          ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.all(0),
              itemCount: travelOrg.length,
              itemBuilder: (context, index) {
                return _buildRemoveableTextfield(index, travelOrg[index]);
              }),
        SizedBox(
          width: double.infinity,
          height: 44,
          child: TextButton(
            onPressed: () {
              ref.read(profileNotifierProvider.notifier).cloneNewTravalOrg();
            },
            // ignore: sort_child_properties_last
            child: Row(
              children: [
                Assets.images.plus.image().iconify(),
                const SizedBox(width: 10),
                const Text(
                  '資格を追加',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: ColorName.orangePrimary,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                ColorName.greyBackground.withOpacity(0.2),
              ),
              shape: MaterialStateProperty.all<OutlinedBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.0),
                ),
              ),
            ),
          ),
        ),
      ],
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
                    .read(profileNotifierProvider.notifier)
                    .editTravelOrganization(index, text);
              },
            ),
          ),
          const SizedBox(width: 6),
          GestureDetector(
              onTap: () {
                ref
                    .read(profileNotifierProvider.notifier)
                    .removeTravelOrganization(index);
              },
              child: Assets.images.delete.image().iconify(36))
        ],
      ),
    );
  }

  Widget _buildSaveButton() {
    return Column(children: [
      const SizedBox(height: 36),
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
            await ref.read(profileNotifierProvider.notifier).saveEditSkill();
            context.router.pop(true);
          },
        ),
      ),
    ]);
  }
}
