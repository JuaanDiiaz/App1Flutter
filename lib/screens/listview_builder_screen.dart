import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_2/themes/app_theme.dart';

class ListViewBuilderScreen extends StatefulWidget {
   
  const ListViewBuilderScreen({super.key});

  @override
  State<ListViewBuilderScreen> createState() => _ListViewBuilderScreenState();
}

class _ListViewBuilderScreenState extends State<ListViewBuilderScreen> {

  final List<int> imagesIds = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  final ScrollController scrollController = ScrollController();
  bool isLoading = false;

  @override
  void initState() {
    super.initState();

    scrollController.addListener(() {
      if((scrollController.position.pixels + 500) >= scrollController.position.maxScrollExtent){
        //add5();
        fetchData();
      }
    });
  }
  Future fetchData () async {
    if(isLoading) return; 
    isLoading = true;
    setState(() {});

    await Future.delayed(const Duration(seconds: 2));
    add5();

    isLoading = false;
    setState(() {});

    if(scrollController.position.pixels + 100 <= scrollController.position.maxScrollExtent){
      return;
    }

    scrollController.animateTo(
      scrollController.position.pixels + 100,
      duration: const Duration(milliseconds: 250),
      curve: Curves.fastOutSlowIn
    );
  }

  void add5() {
    final lastId = imagesIds.last;
    imagesIds.addAll(
      [1,2,3,4,5].map((e) => lastId + e)
    );
    setState(() {});
  }

  Future onRefresh() async {
    await Future.delayed(const Duration(seconds: 2));
    final lastId = imagesIds.last;
    imagesIds.clear();
    imagesIds.add(lastId + 1);
    add5();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: MediaQuery.removePadding(
        context: context ,
        removeTop: true,
        removeBottom: true,
        child: Stack(
          children: [
            RefreshIndicator(
              color: AppTheme.primaryColor,
              onRefresh: onRefresh,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                controller: scrollController,
                itemCount: imagesIds.length,
                itemBuilder: (BuildContext context, int index) {
                  return FadeInImage(
                    width: double.infinity,
                    height: 300,
                    fit: BoxFit.cover,
                    placeholder: const AssetImage('assets/jar-loading.gif'), 
                    image: NetworkImage('https://picsum.photos/500/300/?image=${imagesIds[index]}'),
                  );
                },
              ),
            ),
            if(isLoading)
              Positioned(
                bottom: 20,
                left: size.width * 0.5 - 30,
                child: const LoadingIcon()
              )
          ],
        ),
      ),
    );
  }
}

class LoadingIcon extends StatelessWidget {
  const LoadingIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(0),
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.8),
        shape: BoxShape.circle
      ),
      child: const CircularProgressIndicator(color: AppTheme.primaryColor,),
    );
  }
}