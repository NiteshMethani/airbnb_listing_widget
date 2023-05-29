import 'package:airbnb_listing_widget/widgets/add_to_wishlist_button.dart';
import 'package:airbnb_listing_widget/widgets/navigation_button.dart';
import 'package:airbnb_listing_widget/widgets/page_view_indicators.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListingCard extends StatefulWidget {
  const ListingCard({super.key, required this.listingData});
  final List<Widget> listingData;

  @override
  State<ListingCard> createState() => _ListingCardState();
}

class _ListingCardState extends State<ListingCard> {
  int _activePage = 0;
  final PageController _pageController = PageController(initialPage: 0);

  void _animateToNextPage() => _pageController.animateToPage(_activePage + 1,
      duration: const Duration(milliseconds: 300), curve: Curves.easeIn);

  void _animateToPreviousPage() =>
      _pageController.animateToPage(_activePage - 1,
          duration: const Duration(milliseconds: 300), curve: Curves.easeIn);

  void _animateToPage(int index) => _pageController.animateToPage(index,
      duration: const Duration(milliseconds: 300), curve: Curves.easeIn);

  void onPageChanged(int page) => setState(() {
        _activePage = page;
      });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.02,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(14),
        child: Stack(
          children: [
            // pages
            PageView(
              controller: _pageController,
              physics: const ClampingScrollPhysics(),
              onPageChanged: onPageChanged,
              children: List.generate(
                widget.listingData.length,
                (index) => widget.listingData[index],
              ),
            ),

            // favourite button
            const Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: EdgeInsets.only(right: 20, top: 20),
                child: AddToWishlistButton(),
              ),
            ),

            // next page button
            (_activePage != widget.listingData.length - 1)
                ? Align(
                    alignment: Alignment.centerRight,
                    child: NavigationButton(
                      onPressed: _animateToNextPage,
                      isNext: true,
                    ),
                  )
                : const SizedBox.shrink(),

            // previous page button
            (_activePage != 0)
                ? Align(
                    alignment: Alignment.centerLeft,
                    child: NavigationButton(
                      onPressed: _animateToPreviousPage,
                      isNext: false,
                    ),
                  )
                : const SizedBox.shrink(),

            // page indicators
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: PageViewIndicators(
                  numPages: widget.listingData.length,
                  activePage: _activePage,
                  onTap: _animateToPage,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
