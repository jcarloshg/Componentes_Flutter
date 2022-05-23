import 'package:components_flutter/theme/app_theme.dart';
import 'package:flutter/material.dart';

class ListViewBuilderScreen extends StatefulWidget {
  const ListViewBuilderScreen({Key? key}) : super(key: key);

  @override
  State<ListViewBuilderScreen> createState() => _ListViewBuilderScreenState();
}

class _ListViewBuilderScreenState extends State<ListViewBuilderScreen> {
  final List<int> imagesIDs = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  final ScrollController scrollController = ScrollController();

  bool isLoading = false;

  @override
  void initState() {
    scrollController.addListener(() {
      if ((scrollController.position.pixels + 50) >
          scrollController.position.maxScrollExtent) {
        // addImagesIDs();
        fetchData();
      }
    });
  }

  Future fetchData() async {
    if (isLoading) print('esta gargnado ${isLoading}');

    if (isLoading) return;

    isLoading = true;
    setState(() {});

    await Future.delayed(const Duration(seconds: 3));

    addImagesIDs();

    isLoading = false;
    setState(() {});

    if (scrollController.position.pixels + 100 <=
        scrollController.position.maxScrollExtent) return;

    scrollController.animateTo(
      scrollController.position.pixels + 120,
      duration: const Duration(milliseconds: 300),
      curve: Curves.fastOutSlowIn,
    );
  }

  void addImagesIDs() {
    final lastId = imagesIDs.last;
    imagesIDs.addAll([1, 2, 3].map((e) => lastId + e));

    setState(() {});
  }

  Future<void> onRefresh() async {
    await Future.delayed(const Duration(seconds: 2));
    final lastId = imagesIDs.last;
    imagesIDs.clear();
    imagesIDs.add(lastId + 1);
    addImagesIDs();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.red,
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        removeBottom: true,
        child: Stack(
          children: [
            RefreshIndicator(
              color: AppTheme.primary,
              onRefresh: onRefresh,
              child: ListView.builder(
                controller: scrollController,
                itemCount: imagesIDs.length,
                physics:
                    const BouncingScrollPhysics(), // ! this in android use the same effect thaat IOs
                itemBuilder: (BuildContext context, int index) {
                  return FadeInImage(
                    width: double.infinity,
                    height: 300,
                    fit: BoxFit.cover,
                    placeholder: const AssetImage('assets/gifts/carga.gif'),
                    image: NetworkImage(
                        'https://picsum.photos/500/300?image=${imagesIDs[index]}'),
                  );
                },
              ),
            ),
            if (isLoading)
              Positioned(
                bottom: 40,
                left: size.width * 0.5 - 30,
                child: const _Loading(),
              )
          ],
        ),
      ),
    );
  }
}

class _Loading extends StatelessWidget {
  const _Loading({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.75),
        shape: BoxShape.circle,
      ),
      padding: const EdgeInsets.all(10),
      child: CircularProgressIndicator(color: AppTheme.primary),
    );
  }
}
