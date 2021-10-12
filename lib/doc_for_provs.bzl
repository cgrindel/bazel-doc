load(":stardoc_for_prov.bzl", "stardoc_for_provs")
load(":diff_test_for_provs.bzl", "diff_test_for_provs")
load(":update_doc.bzl", "update_doc")

def doc_for_provs(doc_provs):
    stardoc_for_provs(doc_provs = doc_provs)
    diff_test_for_provs(doc_provs = doc_provs)
    update_doc(doc_provs = doc_provs)
