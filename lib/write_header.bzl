load("@bazel_skylib//rules:write_file.bzl", "write_file")

def write_header(name, header_content = [], doc_provs = [], do_not_edit_warning = True):
    content = []
    if do_not_edit_warning:
        content.append("<!-- Generated with Stardoc, Do Not Edit! -->")
    content.extend(header_content)
    content.extend([
        "",
        "On this page:",
        "",
    ])
    content.extend(
        ["  * [{0}](#{0})".format(r) for r in doc_provs],
    )
    content.append("")

    write_file(
        name = name,
        out = name + ".vm",
        content = content,
    )
