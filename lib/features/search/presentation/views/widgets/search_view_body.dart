import 'package:bookly/features/search/presentation/manger/search_books_cubit.dart/cubit/search_books_cubit.dart';
import 'package:bookly/features/search/presentation/views/widgets/custom_search_text_field.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/search/presentation/views/widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchViewBody extends StatefulWidget {
  const SearchViewBody({super.key});

  @override
  State<SearchViewBody> createState() => _SearchViewBodyState();
}

class _SearchViewBodyState extends State<SearchViewBody> {
  final TextEditingController _searchController = TextEditingController();

  void _performSearch(String text) {
    if (text.trim().isNotEmpty) {
      context.read<SearchBooksCubit>().fetchSearchBooks(
        searchText: text.trim(),
      );
    }
  }

  @override
  void dispose() {
    super.dispose();

    _searchController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBooksCubit, SearchBooksState>(
      builder: (context, state) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 8),
                  CustomSearchTextField(
                    controller: _searchController,
                    onSearch: _performSearch,
                  ),
                  SizedBox(height: 16),
                  Text("Search Result", style: Styles.textStyle18),
                  SizedBox(height: 16),
                ],
              ),
            ),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                child: SearchResultListView(),
                // child: BookListViewItem(book: state.books),
              ),
            ),
          ],
        );
      },
    );
  }
}
