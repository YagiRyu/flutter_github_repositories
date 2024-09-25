import 'package:flutter/material.dart';
import 'package:flutter_github_repositories/domain/model/github_domain_model.dart';
import 'package:flutter_github_repositories/view/router/branch/home_screen_branch.dart';
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
      leading: CircleAvatar(
        backgroundImage: NetworkImage(
          repository.owner.avatarUrl,
        ),
      ),
      title: Text(
        repository.name,
        style: const TextStyle(
          fontSize: 20,
        ),
      ),
      subtitle: Text(repository.owner.ownerName),
      onTap: () async => DetailScreenRoute(repository).go(context),
    );
  }
}
