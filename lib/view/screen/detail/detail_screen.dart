import 'package:flutter/material.dart';
import 'package:flutter_github_repositories/domain/model/github_domain_model.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({
    super.key,
    required this.repository,
  });

  final RepositoryDomainModel repository;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image(image: NetworkImage(repository.owner.avatarUrl)),
    );
  }
}
