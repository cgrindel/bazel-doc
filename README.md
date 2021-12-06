# Macros for Generating Starlark Documentation

This repository contains macros and APIs that reduce some of the boilerplate when generating
documentation for Starlark code.

## Reference Documentation

[Click here](/doc) for reference documentation for the rules and other definitions in this
repository.

## Quickstart

Look at the [BUILD.bazel](/doc/BUILD.bazel) in the documentation directory for this repository. It
uses the macros and APIs defined in this repository.

### Workspace Configuration

```python
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "cgrindel_bazel_doc",
    sha256 = "3ccc6d205a7f834c5e89adcb4bc5091a9a07a69376107807eb9aea731ce92854",
    strip_prefix = "bazel-doc-0.1.2",
    urls = ["https://github.com/cgrindel/bazel-doc/archive/v0.1.2.tar.gz"],
)

load("@cgrindel_bazel_doc//bazeldoc:deps.bzl", "bazeldoc_dependencies")

bazeldoc_dependencies()

load("@bazel_skylib//:workspace.bzl", "bazel_skylib_workspace")

bazel_skylib_workspace()

load("@io_bazel_stardoc//:setup.bzl", "stardoc_repositories")

stardoc_repositories()
```
