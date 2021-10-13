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
    sha256 = "bae4a0f41cc5cf89f26c779fc04379f09bb290b4910b2cf206c0372ad0c8aac7",
    strip_prefix = "bazel-doc-0.1.0",
    urls = ["https://github.com/cgrindel/bazel-doc/archive/v0.1.0.tar.gz"],
)

load("@cgrindel_bazel_doc//bazeldoc:deps.bzl", "bazeldoc_dependencies")

bazeldoc_dependencies()
```
