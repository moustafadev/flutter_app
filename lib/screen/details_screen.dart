
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/screen/widget/custom_caches_network_image.dart';
import 'package:flutter_app/screen/widget/custom_care.dart';
import 'package:flutter_app/screen/widget/custom_characteristics.dart';
import 'package:flutter_app/screen/widget/custom_condition.dart';
import 'package:flutter_app/screen/widget/custom_gallery.dart';
import 'package:flutter_app/screen/widget/custom_known.dart';
import 'package:flutter_app/screen/widget/custom_page_view_title_gallery.dart';
import 'package:flutter_app/screen/widget/custom_title_info.dart';
import '../model/detailsModel.dart';
import '../shared/components/component.dart';
import '../shared/constants/constant.dart';

class DetailsScreen extends StatefulWidget {
  DetailsScreen({Key key, @required this.details, @required this.index})
      : super(key: key);

  List<DetailsModel> details;
  int index;

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  bool isLoading = false;

  @override
  void initState() {
    super.initState();

    // WidgetsBinding.instance.addPostFrameCallback((_) => loadData());
  }

  // Future loadData() async {
  //   setState(() => isLoading = true);
  //
  //   await Future.wait(widget.details[widget.index].gallery
  //       .map((e) => cacheImageGalley(context, e))
  //       .toList());
  //
  //   setState(() => isLoading = false);
  // }
  //
  // Future cacheImageGalley(BuildContext context, String url) =>
  //     precacheImage(CachedNetworkImageProvider(url), context);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            '${widget.details[widget.index].name}',
            style: TextStyle(color: Colors.black),
          ),
          leading: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.chevron_left,
                color: Colors.black,
              )),
        ),
        body: !isLoading
            ? buildDetails()
            : Center(
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(kPrimaryColor),
                ),
              ));
  }


  Widget buildDetails(){
    double sizeHeight = MediaQuery.of(context).size.height;
    return CustomScrollView(
      slivers: [
        showSliverAppBar(context),
        SliverList(
          delegate: SliverChildListDelegate([
            sizedBoxHeight(sizeHeight * 0.018),
            CustomKnown(
              details: widget.details[widget.index],
            ),
            sizedBoxHeight(sizeHeight * 0.018),
            CustomGalleryScreen(
              image: kImageFramePlants,
              text: "Field Guide",
              details: widget.details[widget.index],
            ),
            sizedBoxHeight(sizeHeight * 0.018),
            CustomTitleInfo(
              title: widget.details[widget.index].description,
              image: kImageLeafPlant,
              text: 'Description',
              user: false,
            ),
            sizedBoxHeight(sizeHeight * 0.018),
            CustomCharacteristics(
              details: widget.details[widget.index],
            ),
            sizedBoxHeight(sizeHeight * 0.018),
            CustomCondition(
              details: widget.details[widget.index],
            ),
            sizedBoxHeight(sizeHeight * 0.018),
            if (widget.details[widget.index].diseases != "")
              CustomCare(
                details: widget.details[widget.index],
              ),
            sizedBoxHeight(sizeHeight * 0.018),
            if (widget.details[widget.index].diseases != "")
              CustomTitleInfo(
                title: widget.details[widget.index].diseases,
                image: kImageDiseases,
                text: 'Pests and Diseases',
                user: false,
              ),
            if (widget.details[widget.index].gardenUse != "")
              Column(
                children: [
                  sizedBoxHeight(sizeHeight * 0.018),
                  CustomTitleInfo(
                    title: widget.details[widget.index].gardenUse,
                    image: kImageGardenUser,
                    text: 'User',
                    user: true,
                  ),
                ],
              ),
          ]),
        ),
      ],
    );
  }


  SliverAppBar showSliverAppBar(context) {
    return SliverAppBar(
      expandedHeight: 300.0,
      leadingWidth: double.infinity,
      backgroundColor: Colors.white,
      automaticallyImplyLeading: false,
      flexibleSpace: FlexibleSpaceBar(
        background: InkWell(
          onTap: () {
            navigatorTo(
              context,
              CustomPageViewTitleGallery(
                index: 1,
                image: widget.details[widget.index].image,
                details: widget.details[widget.index].gallery,
              ),
            );
          },
          child: CustomCachedNetworkImage(
            height: double.infinity,
            url: widget.details[widget.index].image,
          ),
        ),
      ),
    );
  }
}
