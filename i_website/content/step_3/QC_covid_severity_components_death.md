---
title: "QC_covid_severity_components_death"
output: html_document
date: "2023-08-23"
weight: 12
slug: "qc-cov-sev-death"
name_excel: "QC_covid_severity_components_death.xlsx"
description: "Occurrence of components of covid death, per meaning, to all persons in the study population"
---

<script src="/rmarkdown-libs/core-js/shim.min.js"></script>
<script src="/rmarkdown-libs/react/react.min.js"></script>
<script src="/rmarkdown-libs/react/react-dom.min.js"></script>
<script src="/rmarkdown-libs/reactwidget/react-tools.js"></script>
<script src="/rmarkdown-libs/htmlwidgets/htmlwidgets.js"></script>
<link href="/rmarkdown-libs/reactable/reactable.css" rel="stylesheet" />
<script src="/rmarkdown-libs/reactable-binding/reactable.js"></script>
<div class="tab">
<button class="tablinks" onclick="openCity(event, &#39;Metadata&#39;)" id="defaultOpen">Metadata</button>
<button class="tablinks" onclick="openCity(event, &#39;Data Model&#39;)">Data Model</button>
<button class="tablinks" onclick="openCity(event, &#39;Parameters&#39;)">Parameters</button>
<button class="tablinks" onclick="openCity(event, &#39;Example&#39;)">Example</button>
</div>
<div id="Metadata" class="tabcontent">
<div id="htmlwidget-1" class="reactable html-widget " style="width:auto;height:600px;"></div>
<script type="application/json" data-for="htmlwidget-1">{"x":{"tag":{"name":"Reactable","attribs":{"data":{"medatata_name":["Name of the dataset","Content of the dataset","Unit of observation","Dataset where the list of UoOs is fully listed and with 1 record per UoO","How many observations per UoO","Variables capturing the UoO","Primary key","Parameters",null,null,null,null,null,null,null,null,null,null,null,null],"metadata_content":["QC_covid_severity_components_death","Occurrence of components of covid death, per meaning, to all persons in the study population","list of meanings",null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null]},"columns":[{"id":"medatata_name","name":"medatata_name","type":"character"},{"id":"metadata_content","name":"metadata_content","type":"character"}],"sortable":false,"searchable":true,"pagination":false,"highlight":true,"bordered":true,"striped":true,"style":{"maxWidth":1800},"height":"600px","dataKey":"134f34d51e35be9b1d570d2d0b9de2f0"},"children":[]},"class":"reactR_markup"},"evals":[],"jsHooks":[]}</script>
</div>
<div id="Data Model" class="tabcontent">
<div id="htmlwidget-2" class="reactable html-widget " style="width:auto;height:600px;"></div>
<script type="application/json" data-for="htmlwidget-2">{"x":{"tag":{"name":"Reactable","attribs":{"data":{"VarName":["meanings","year","N",null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null],"Description":["meanings where the outcome is observed",null,"frequency of the combination",null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null],"Format":["binary",null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null],"Vocabulary":["1= this component is observed \r\n0 = otherwise",null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null],"Parameters":["meanings",null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null],"Notes and examples":[null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null],"Source tables and variables":[null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null],"Retrieved":[null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null],"Calculated":[null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null],"Algorithm_id":[null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null],"Rule":[null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null]},"columns":[{"id":"VarName","name":"VarName","type":"character"},{"id":"Description","name":"Description","type":"character"},{"id":"Format","name":"Format","type":"character"},{"id":"Vocabulary","name":"Vocabulary","type":"character"},{"id":"Parameters","name":"Parameters","type":"character"},{"id":"Notes and examples","name":"Notes and examples","type":"logical"},{"id":"Source tables and variables","name":"Source tables and variables","type":"logical"},{"id":"Retrieved","name":"Retrieved","type":"logical"},{"id":"Calculated","name":"Calculated","type":"logical"},{"id":"Algorithm_id","name":"Algorithm_id","type":"logical"},{"id":"Rule","name":"Rule","type":"logical"}],"sortable":false,"searchable":true,"pagination":false,"highlight":true,"bordered":true,"striped":true,"style":{"maxWidth":1800},"height":"600px","dataKey":"54710855291908ee8762b5ae31b3d73a"},"children":[]},"class":"reactR_markup"},"evals":[],"jsHooks":[]}</script>
</div>
<div id="Parameters" class="tabcontent">
<div id="htmlwidget-3" class="reactable html-widget " style="width:auto;height:600px;"></div>
<script type="application/json" data-for="htmlwidget-3">{"x":{"tag":{"name":"Reactable","attribs":{"data":{"parameter in the variable name":["meanings","meanings",null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null],"values":["death_from_covid_registry","death_within_56_days",null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null],"name of macro":[null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null]},"columns":[{"id":"parameter in the variable name","name":"parameter in the variable name","type":"character"},{"id":"values","name":"values","type":"character"},{"id":"name of macro","name":"name of macro","type":"logical"}],"sortable":false,"searchable":true,"pagination":false,"highlight":true,"bordered":true,"striped":true,"style":{"maxWidth":1800},"height":"600px","dataKey":"434644d5eb95d1338bec7963d667e59c"},"children":[]},"class":"reactR_markup"},"evals":[],"jsHooks":[]}</script>
</div>
<div id="Example" class="tabcontent">
<div id="htmlwidget-4" class="reactable html-widget " style="width:auto;height:600px;"></div>
<script type="application/json" data-for="htmlwidget-4">{"x":{"tag":{"name":"Reactable","attribs":{"data":{"death_from_covid_registry":[1,0,1,1,0,"NA","NA","NA","NA","NA","NA","NA","NA","NA","NA","NA","NA","NA","NA","NA"],"death_within_56_days":[0,1,1,0,1,"NA","NA","NA","NA","NA","NA","NA","NA","NA","NA","NA","NA","NA","NA","NA"],"year":[2020,2021,2020,2021,2020,"NA","NA","NA","NA","NA","NA","NA","NA","NA","NA","NA","NA","NA","NA","NA"],"N":[2,3,2,2,1,"NA","NA","NA","NA","NA","NA","NA","NA","NA","NA","NA","NA","NA","NA","NA"]},"columns":[{"id":"death_from_covid_registry","name":"death_from_covid_registry","type":"numeric"},{"id":"death_within_56_days","name":"death_within_56_days","type":"numeric"},{"id":"year","name":"year","type":"numeric"},{"id":"N","name":"N","type":"numeric"}],"sortable":false,"searchable":true,"pagination":false,"highlight":true,"bordered":true,"striped":true,"style":{"maxWidth":1800},"height":"600px","dataKey":"c149e4ae780ed1424e6b875b7047c8c2"},"children":[]},"class":"reactR_markup"},"evals":[],"jsHooks":[]}</script>
</div>
