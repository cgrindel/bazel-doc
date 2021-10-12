load("@io_bazel_stardoc//stardoc:stardoc.bzl", "stardoc")

def stardoc_for_prov(doc_prov):
    stardoc(
        name = doc_prov.name,
        out = doc_prov.out_basename,
        header_template = doc_prov.header_basename,
        input = doc_prov.stardoc_input,
        symbol_names = doc_prov.symbols,
        deps = doc_prov.deps,
    )

def stardoc_for_provs(doc_provs):
    [
        stardoc_for_prov(
            doc_prov = doc_prov,
        )
        for doc_prov in doc_provs
        if doc_prov.is_stardoc
    ]
