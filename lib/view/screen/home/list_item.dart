import 'package:flutter/material.dart';
import 'package:flutter_github_repositories/domain/model/github_domain_model.dart';
import 'package:flutter_github_repositories/view/router/router.dart';

class ItemList extends StatelessWidget {
  const ItemList({
    super.key,
    required this.repository,
  });

  final RepositoryDomainModel repository;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(repository.name),
      onTap: () async => const DetailScreenRoute().go(context),
    );
  }
}
