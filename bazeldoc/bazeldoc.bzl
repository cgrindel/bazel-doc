load("//bazeldoc/internal:doc_for_provs.bzl", _doc_for_provs = "doc_for_provs")
load("//bazeldoc/internal:write_header.bzl", _write_header = "write_header")
load("//bazeldoc/internal:providers.bzl", _providers = "providers")
load("//bazeldoc/internal:write_file_list.bzl", _write_file_list = "write_file_list")

# Rules and Macros
doc_for_provs = _doc_for_provs
write_header = _write_header
write_file_list = _write_file_list

# API
providers = _providers
