load("@bazel_skylib//rules:write_file.bzl", "write_file")

def write_doc(name, out, content = [], do_not_edit_warning = True):
    final_content = []
    if do_not_edit_warning:
        final_content.append("<!-- Generated with Stardoc, Do Not Edit! -->")
    final_content.extend(content)
    final_content.append("")

    write_file(
        name = name,
        out = out,
        content = final_content,
    )
