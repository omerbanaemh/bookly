// import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/best_seller_list_view.dart';
// import 'package:bookly/features/home/presentation/views/widgets/custom_app_bar.dart';
// import 'package:bookly/features/home/presentation/views/widgets/featured_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return 
        // SliverToBoxAdapter(
        //   child:   Column(
        //     crossAxisAlignment: CrossAxisAlignment.start,
        //     children:  [
        //       CustomAppBar(),
              
        //       FeatutedBooksListView(),
        //       SizedBox(height: 50),
        //       Padding(
        //        padding:  EdgeInsets.symmetric(horizontal: 30),
        //         child: Text("Newset Books", style: Styles.textStyle18),
        //       ),
        //       SizedBox(height: 20),
        //     ],
        //   ),
        // ),
        // SliverFillRemaining(
       BestSellerListView();
    
        // ),
                  
      // ],
    // );
  }
}
