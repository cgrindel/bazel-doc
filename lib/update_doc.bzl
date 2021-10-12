def update_doc(doc_provs, doc_path = "doc"):
    write_file(
        name = "gen_update",
        out = "update.sh",
        content = [
            "#!/usr/bin/env bash",
            "cd $BUILD_WORKSPACE_DIRECTORY",
        ] + [
            "cp -fv bazel-bin/{doc_path}/{gen_doc} {doc_path}/{src_doc}".format(
                doc_path = doc_path,
                gen_doc = doc_prov.out_basename,
                src_doc = doc_prov.doc_basename,
            )
            for doc_prov in doc_provs
        ],
    )

    sh_binary(
        name = "update",
        srcs = ["update.sh"],
        data = [doc_prov.out_basename for doc_prov in doc_provs],
    )
