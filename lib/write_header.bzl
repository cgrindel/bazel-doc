load("@bazel_skylib//rules:write_file.bzl", "write_file")
load(":write_doc.bzl", "write_doc")
load(":doc_utilities.bzl", "doc_utilities")

def write_header(name, out = None, header_content = [], doc_provs = [], do_not_edit_warning = True):
    content = []
    content.extend(header_content)
    if doc_provs != []:
        content.extend([
            "",
            "On this page:",
            "",
        ])
        content.extend(
            [doc_utilities.toc_entry(r, "#{0}".format(r)) for r in doc_provs],
        )
    content.append("")

    if out == None:
        out = name + ".vm"

    write_doc(
        name = name,
        out = out,
        content = content,
        do_not_edit_warning = do_not_edit_warning,
    )
