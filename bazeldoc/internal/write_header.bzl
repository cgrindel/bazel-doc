load(":write_doc.bzl", "write_doc")
load(":doc_utilities.bzl", "doc_utilities")

def write_header(
        name,
        out = None,
        header_content = [],
        doc_provs = [],
        do_not_edit_warning = True):
    """Defines a target that writes a header file that will be used as a header template for a `stardoc` rule.

    Args:
        name: The name of the target.
        out: The basename of the output filename as a `string`.
        header_content: A `list` of strings representing the header content of
                        the file.
        doc_provs: A `list` of document provider `struct` values as returned
                   from `providers.create()`.
        do_not_edit_warning: A `bool` specifying whether a comment should be
                             added to the top of the written file.

    Returns:
        None.
    """
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
