import 'package:flutter_github_repositories/data/model/github.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test("toJson and fromJson should work correctly with blank object", () {
    final model = GitHub(items: List.empty());
    final json = model.toJson();
    final modelFromJson = GitHub.fromJson(json);

    expect(modelFromJson, model);
  });

  test("toJson and fromJson should work correctly", () {
    const repositories = [
      Repository(
        id: 1,
        name: "Dart",
        owner: Owner(
          id: 1,
          login: "dart",
          avatarUrl: "https://",
          url: "https://",
        ),
        htmlUrl: "https://",
      ),
      Repository(
        id: 1,
        name: "Kotlin",
        owner: Owner(
          id: 1,
          login: "Kotlin",
          avatarUrl: "https://",
          url: "https://",
        ),
        htmlUrl: "https://",
      ),
    ];
    const model = GitHub(items: repositories);
    final json = model.toJson();
    final modelFromJson = GitHub.fromJson(json);

    expect(modelFromJson, model);
  });
}
