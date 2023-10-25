+++
archetype = "chapter"
title = "{{ replace .Name "-" " " | title }}"
output = html_document
menuTitle: "Step X"
weight = X
name_excel: ["Table 1.xlsx", "test"]
description: "`r paste(rmarkdown::metadata$name_excel, collapse = ".")`"
+++

paste(rmarkdown::metadata$name_excel, collapse = "<br>")

{{%children containerstyle="div" style="h2" description="true" %}}
