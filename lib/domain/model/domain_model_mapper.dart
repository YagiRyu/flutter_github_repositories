import 'package:flutter_github_repositories/data/model/github.dart';
import 'package:flutter_github_repositories/domain/model/github_domain_model.dart';

extension GitHubDomainModelMapper on GitHub {
  GitHubDomainModel mapToDomainModel() {
    return GitHubDomainModel(
        repositories: items.map((item) => item.mapToDomainModel()).toList());
  }
}

extension RepositoryDomainModelMapper on Repository {
  RepositoryDomainModel mapToDomainModel() {
    return RepositoryDomainModel(
      id: id,
      name: name,
      owner: owner.mapToDomainModel(),
      repositoryLink: htmlUrl,
      description: description,
      topics: topics,
    );
  }
}

extension OwnerDomainModelMapper on Owner {
  OwnerDomainModel mapToDomainModel() {
    return OwnerDomainModel(
        id: id, ownerName: login, avatarUrl: avatarUrl, ownerProfileLink: url);
  }
}
