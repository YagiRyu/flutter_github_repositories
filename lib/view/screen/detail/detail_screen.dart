import 'package:flutter/material.dart';
import 'package:flutter_github_repositories/domain/model/github_domain_model.dart';
import 'package:flutter_github_repositories/view/screen/detail/tag.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({
    super.key,
    required this.repository,
    this.maxLines = 5,
  });

  final RepositoryDomainModel repository;
  final int maxLines;

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    final repository = widget.repository;
    final maxLines = widget.maxLines;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          repository.name,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                const SizedBox(height: 24),
                Image(
                  image: NetworkImage(
                    repository.owner.avatarUrl,
                  ),
                  width: 200,
                  height: 200,
                ),
                const SizedBox(height: 24),
                Text(
                  repository.name,
                  style: const TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  repository.repositoryLink,
                ),
              ],
            ),
          ),
          const Divider(),
          // owner
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Owner",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "name: ${repository.owner.ownerName}\nlink: ${repository.owner.ownerProfileLink}",
                  style: const TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 24),
                // Description
                const Text(
                  "Description",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  repository.description,
                  style: const TextStyle(fontSize: 16),
                  maxLines: _isExpanded ? maxLines : null,
                  overflow: TextOverflow.ellipsis,
                ),
                if (!_isExpanded &&
                    repository.description.length > maxLines * 10)
                  TextButton(
                    onPressed: () => setState(() => _isExpanded = true),
                    child: const Text("続きを読む"),
                  ),
                if (_isExpanded &&
                    repository.description.length > maxLines * 10)
                  TextButton(
                    onPressed: () => setState(() => _isExpanded = false),
                    child: const Text("折りたたむ"),
                  ),
                // Tag
                const SizedBox(height: 24),
                const Text(
                  "Tags",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Wrap(
                  spacing: 8.0,
                  runSpacing: 4.0,
                  children: repository.topics.map((topic) {
                    return TagComponent(text: topic);
                  }).toList(),
                ),
                const SizedBox(height: 20),
              ],
            ),
          )
        ],
      ),
    );
  }
}
