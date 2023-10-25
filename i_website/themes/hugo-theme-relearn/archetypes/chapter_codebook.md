+++
archetype = "chapter"
title = "{{ replace .Name "-" " " | title }}"
output = html_document
menuTitle: "Step X"
weight = X
name_excel: "Table 1.xlsx"
description: "`r rmarkdown::metadata$name_excel`"
+++

rmarkdown::metadata$name_excel

{{%children containerstyle="div" style="h2" description="true" %}}
