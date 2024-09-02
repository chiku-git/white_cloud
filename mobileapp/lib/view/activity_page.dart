import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:white_cloud/importer.dart';

class ActivityPage extends StatelessWidget {
  static const path = '/user/activity/';
  const ActivityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      overrides: [
        activityViewModelProvider.overrideWith((ref) {
          return ActivityViewModelNotifier(
              ActivityViewmodel(
                model: ActivityPageModel(
                  currentType: ActivityType.favorite
                ),
              )
          );
        })
      ],
      child: SafeArea(
          child: Scaffold(
            body: Padding(
              padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
                child: _Body()
            ),
          )
      ),
    );
  }
}

class _Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        _ChoiceBar(),
        Margin.vertical(20),
        _FilterResultList(),
      ],
    );
  }
}

class _ChoiceBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Wrap(
        spacing: 10,
        children: [
          _SelectChip(
              type: ActivityType.favorite,
              text: Strings.favorite,
              onSelected: (isSelected) {

              }
          ),
          _SelectChip(
              type: ActivityType.reply,
              text: Strings.following,
              onSelected: (isSelected) {

              }
          ),
        ],
      ),
    );
  }
}

class _SelectChip extends ConsumerWidget {
  final ActivityType type;
  final String text;
  final Function(bool) onSelected;

  const _SelectChip({
    required this.type,
    required this.text,
    required this.onSelected
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final vm = ref.watch(activityViewModelProvider);
    return ChoiceChip(
      label: Text(text),
      selected: vm.model.currentType == type,
      onSelected: (isSelected) {
        if (isSelected) {
          _notify(type: type, ref: ref);
          Future(() {
            vm.fetchResult(page: 0);
          });
          onSelected(isSelected);
        }
      },
      showCheckmark: false,
    );
  }

  _notify({required ActivityType type, required WidgetRef ref}) {
    ref.read(activityViewModelProvider.notifier).update(type: type);
  }
}

class _FilterResultList extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final vm = ref.read(activityViewModelProvider);

    return PagedListView(
      shrinkWrap: true,
      primary: false,
      pagingController: vm.controller,
      builderDelegate: PagedChildBuilderDelegate<PostDigest>(
          itemBuilder: (BuildContext context, PostDigest item, int index) {
            return PostContentTile(digest: item);
          },
          firstPageErrorIndicatorBuilder: (context) {
            return _ErrorResultPage();
          },
          newPageErrorIndicatorBuilder: (context) {
            return _ErrorResultPage();
          },
          noItemsFoundIndicatorBuilder: (context) {
            return const Center(
                child: Text(Strings.noFavorite)
            );
          }
      ),
    );
  }
}

class _ErrorResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(Strings.errorHasOccurred),
    );
  }
}