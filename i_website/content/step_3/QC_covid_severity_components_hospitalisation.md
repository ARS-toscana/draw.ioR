---
title: "QC_covid_severity_components_hospitalisation"
output: html_document
date: "2023-08-23"
weight: 8
slug: "qc-cov-sev-hosp"
name_excel: "QC_covid_severity_components_hospitalisation.xlsx"
description: "Occurrence of components of covid hospitalisation, per meaning, to all persons in the study population"
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
<script type="application/json" data-for="htmlwidget-1">{"x":{"tag":{"name":"Reactable","attribs":{"data":{"medatata_name":["Name of the dataset","Content of the dataset","Unit of observation","Dataset where the list of UoOs is fully listed and with 1 record per UoO","How many observations per UoO","Variables capturing the UoO","Primary key","Parameters",null,null,null,null,null,null,null,null,null,null,null,null],"metadata_content":["QC_covid_severity_components_hospitalisation","Occurrence of components of covid hospitalisation, per meaning, to all persons in the study population","list of meanings",null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null]},"columns":[{"id":"medatata_name","name":"medatata_name","type":"character"},{"id":"metadata_content","name":"metadata_content","type":"character"}],"sortable":false,"searchable":true,"pagination":false,"highlight":true,"bordered":true,"striped":true,"style":{"maxWidth":1800},"height":"600px","dataKey":"332107bc3974ead4ffd8c2422b68c097"},"children":[]},"class":"reactR_markup"},"evals":[],"jsHooks":[]}</script>
</div>
<div id="Data Model" class="tabcontent">
<div id="htmlwidget-2" class="reactable html-widget " style="width:auto;height:600px;"></div>
<script type="application/json" data-for="htmlwidget-2">{"x":{"tag":{"name":"Reactable","attribs":{"data":{"VarName":["meanings","year","N",null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null],"Description":["meanings where the outcome is observed",null,"frequency of the combination",null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null],"Format":["binary",null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null],"Vocabulary":["1= this component is observed \r\n0 = otherwise",null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null],"Parameters":["meanings",null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null],"Notes and examples":[null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null],"Source tables and variables":[null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null],"Retrieved":[null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null],"Calculated":[null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null],"Algorithm_id":[null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null],"Rule":[null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null]},"columns":[{"id":"VarName","name":"VarName","type":"character"},{"id":"Description","name":"Description","type":"character"},{"id":"Format","name":"Format","type":"character"},{"id":"Vocabulary","name":"Vocabulary","type":"character"},{"id":"Parameters","name":"Parameters","type":"character"},{"id":"Notes and examples","name":"Notes and examples","type":"logical"},{"id":"Source tables and variables","name":"Source tables and variables","type":"logical"},{"id":"Retrieved","name":"Retrieved","type":"logical"},{"id":"Calculated","name":"Calculated","type":"logical"},{"id":"Algorithm_id","name":"Algorithm_id","type":"logical"},{"id":"Rule","name":"Rule","type":"logical"}],"sortable":false,"searchable":true,"pagination":false,"highlight":true,"bordered":true,"striped":true,"style":{"maxWidth":1800},"height":"600px","dataKey":"54710855291908ee8762b5ae31b3d73a"},"children":[]},"class":"reactR_markup"},"evals":[],"jsHooks":[]}</script>
</div>
<div id="Parameters" class="tabcontent">
<div id="htmlwidget-3" class="reactable html-widget " style="width:auto;height:600px;"></div>
<script type="application/json" data-for="htmlwidget-3">{"x":{"tag":{"name":"Reactable","attribs":{"data":{"parameter in the variable name":["meanings","meanings","meanings",null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null],"values":["covid_narrow_hosp_m_hospitalisation_primary","hospitalisation_after_COVID","hospitalisation_from_covid_registry",null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null],"name of macro":[null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null]},"columns":[{"id":"parameter in the variable name","name":"parameter in the variable name","type":"character"},{"id":"values","name":"values","type":"character"},{"id":"name of macro","name":"name of macro","type":"logical"}],"sortable":false,"searchable":true,"pagination":false,"highlight":true,"bordered":true,"striped":true,"style":{"maxWidth":1800},"height":"600px","dataKey":"0dab0c596b8e794fafac6ea37ac52090"},"children":[]},"class":"reactR_markup"},"evals":[],"jsHooks":[]}</script>
</div>
<div id="Example" class="tabcontent">
<div id="htmlwidget-4" class="reactable html-widget " style="width:auto;height:600px;"></div>
<script type="application/json" data-for="htmlwidget-4">{"x":{"tag":{"name":"Reactable","attribs":{"data":{"covid_narrow_hosp_m_hospitalisation_primary":[1,0,0,1,0,"NA","NA","NA","NA","NA","NA","NA","NA","NA","NA","NA","NA","NA","NA","NA"],"hospitalisation_after_COVID":[1,0,0,0,1,"NA","NA","NA","NA","NA","NA","NA","NA","NA","NA","NA","NA","NA","NA","NA"],"hospitalisation_from_covid_registry":[0,1,1,0,0,"NA","NA","NA","NA","NA","NA","NA","NA","NA","NA","NA","NA","NA","NA","NA"],"year":[2021,2020,2021,2021,2020,"NA","NA","NA","NA","NA","NA","NA","NA","NA","NA","NA","NA","NA","NA","NA"],"N":[1,3,2,16,1,"NA","NA","NA","NA","NA","NA","NA","NA","NA","NA","NA","NA","NA","NA","NA"]},"columns":[{"id":"covid_narrow_hosp_m_hospitalisation_primary","name":"covid_narrow_hosp_m_hospitalisation_primary","type":"numeric"},{"id":"hospitalisation_after_COVID","name":"hospitalisation_after_COVID","type":"numeric"},{"id":"hospitalisation_from_covid_registry","name":"hospitalisation_from_covid_registry","type":"numeric"},{"id":"year","name":"year","type":"numeric"},{"id":"N","name":"N","type":"numeric"}],"sortable":false,"searchable":true,"pagination":false,"highlight":true,"bordered":true,"striped":true,"style":{"maxWidth":1800},"height":"600px","dataKey":"727e42bca4aff738edb635dee40dfa23"},"children":[]},"class":"reactR_markup"},"evals":[],"jsHooks":[]}</script>
</div>
