load("@bazel_skylib//rules:diff_test.bzl", "diff_test")

def diff_test_for_prov(doc_prov):
    diff_test(
        name = "test_" + doc_prov.name,
        file1 = doc_prov.out_basename,
        file2 = doc_prov.doc_basename,
    )

def diff_test_for_provs(doc_provs):
    [
        diff_test_for_prov(
            doc_prov = doc_prov,
        )
        for doc_prov in doc_provs
    ]
