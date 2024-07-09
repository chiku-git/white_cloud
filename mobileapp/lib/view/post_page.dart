import 'package:white_cloud/importer.dart';
import 'package:white_cloud/provider/post_form_notifier.dart';

class PostPage extends StatelessWidget with ThemeMixin {
  static const path = '/post/';
  final PostForm form;
  const PostPage({super.key, required this.form});

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      overrides: [
        postFormProvider.overrideWith((ref) => PostFormNotifier(form))
      ],
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            leading: _Leading(),
            title: _Title(),
            centerTitle: true,
            automaticallyImplyLeading: false,
          ),
          body: _Body(),
        ),
      ),
    );
  }
}

class _Leading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => Navigator.pop(context),
      icon: const Icon(Icons.close),
    );
  }
}

class _Title extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Text(
      Strings.createPostTitle,
      style: TextStyle(
        fontSize: 17,
      ),
    );
  }
}

class _Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 0, 15, 5),
      child: Stack(
        children: [
          Flex(
            direction: Axis.horizontal,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: _ImageWidget(),
              ),
              Margin.horizontal(10),
              Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 50),
                    child: SingleChildScrollView(
                      child: _Editor(),
                    ),
                  )
              )
            ],
          ),
          Container(
            alignment: Alignment.bottomCenter,
            child: _BottomContainer(),
          )
        ],
      ),
    );
  }
}

class _ImageWidget extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final form = ref.read(postFormProvider);

    return CirclePhotoFrame(
        image: form.user.image != null
            ? Image.network(
                "${Config.localhost}${form.user.image}",
                fit: BoxFit.cover,
              )
            : const PlaceHolderPersonImage(),
        borderWidth: 0,
        diameter: 30,
    );
  }
}

class _Editor extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {

    return TextFormField(
      decoration: const InputDecoration(
          hintText: Strings.createPostHint,
          border: InputBorder.none,
      ),
      autofocus: true,
      keyboardType: TextInputType.multiline,
      maxLines: null,
      textInputAction: TextInputAction.newline,
      maxLength: 500,
      onChanged: (text) {
        ref.read(postFormProvider.notifier).update(body: text);
      },
    );
  }
}

class _BottomContainer extends ConsumerWidget with ThemeMixin, UIMixin {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colors = getColorScheme(context);
    final apiState = ref.watch(apiProvider);
    final form = ref.watch(postFormProvider);

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        RoundedProgressButton(
          state: ButtonState.fromApiState(apiState),
          onPressed: form.isValid() ? () {
            ref.read(apiProvider.notifier).createPost(
                body: form.body,
                onSuccess: (res) {
                  Future.delayed(const Duration(milliseconds: 300), () {
                    Navigator.of(context).pop(res);
                  });
                },
                onFailure: (err) {
                  showErrorBanner(context, err.message);
                }
            );
          } : null,
          backgroundColor: colors.tertiary,
          disabledForegroundColor: colors.tertiary.withOpacity(0.2),
          progressColor: colors.onTertiary,
          successColor: colors.onTertiary,
          child: Text(
            Strings.doPost,
            style: TextStyle(
                color: colors.onTertiary
            ),
          ),
        )
      ],
    );
  }
}