import 'package:bookly/core/widgets/custom_error_widget.dart';
import 'package:bookly/core/widgets/custom_loading_indicator.dart';
import 'package:bookly/features/home/presentation/manger/smila_books_cubit/similar_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
  return SizedBox(
    height: MediaQuery.of(context).size.height * .15,
    child: ListView.builder(
      itemCount: state.books.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return  Padding(
          padding:const EdgeInsets.symmetric(horizontal: 5),
          child: CustomBookImage(
            imageUrl: state.books[index].volumeInfo.imageLinks?.thumbnail?? 
                'https://www.bigfootdigital.co.uk/wp-content/uploads/2020/07/image-optimisation-scaled.jpg',
          ),
        );
      },
    ),
  );
}else if(state is SimilarBooksFailure){
  return CustomErrorWidget(errMessage: state.errMessage);
}
else{
  return const CustomLoadingIndicator();
}
      },
    );
  }
}
