workspace(name = "cgrindel_bazel_doc")

load("//lib:deps.bzl", "bazel_doc_dependencies")

bazel_doc_dependencies()

load("@bazel_skylib//:workspace.bzl", "bazel_skylib_workspace")

bazel_skylib_workspace()

load("@io_bazel_stardoc//:setup.bzl", "stardoc_repositories")

stardoc_repositories()
