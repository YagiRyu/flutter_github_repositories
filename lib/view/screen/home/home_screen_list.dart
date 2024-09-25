import 'package:flutter/material.dart';
import 'package:flutter_github_repositories/domain/model/github_domain_model.dart';
import 'package:flutter_github_repositories/view/screen/home/list_item.dart';

class HomeScreenList extends StatelessWidget {
  const HomeScreenList({
    super.key,
    required this.itemCount,
    required this.repositories,
  });

  final int itemCount;
  final List<RepositoryDomainModel> repositories;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: itemCount,
      itemBuilder: (context, index) {
        final repository = repositories[index];
        return ItemList(repository: repository);
      },
    );
  }
}
