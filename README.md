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
    sha256 = "26b269eec6dda36f3f24a4ffef1b997f057c78a53300e6c83a110cd79cd0918e",
    strip_prefix = "bazel-doc-0.1.1",
    urls = ["https://github.com/cgrindel/bazel-doc/archive/v0.1.1.tar.gz"],
)

load("@cgrindel_bazel_doc//bazeldoc:deps.bzl", "bazeldoc_dependencies")

bazeldoc_dependencies()
```
