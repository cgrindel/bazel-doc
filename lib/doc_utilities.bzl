def _link(label, url):
    return "[{label}]({url})".format(
        label = label,
        url = url,
    )

def _toc_entry(label, url):
    return "  * " + _link(label, url)

doc_utilities = struct(
    link = _link,
    toc_entry = _toc_entry,
)
