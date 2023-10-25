---
title: "D3_covid_episodes"
output: html_document
date: "2023-08-23"
weight: 4
slug: "d3-cov-epi"
name_excel: "D3_covid_episodes.xlsx"
description: "contains the episodes of COVID observed in all persons in the study population. Each episode is separated from the next by at least 60 days"
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
<button class="tablinks" onclick="openCity(event, &#39;Examples&#39;)">Examples</button>
</div>
<div id="Metadata" class="tabcontent">
<div id="htmlwidget-1" class="reactable html-widget " style="width:auto;height:600px;"></div>
<script type="application/json" data-for="htmlwidget-1">{"x":{"tag":{"name":"Reactable","attribs":{"data":{"medatata_name":["Name of the dataset","Content of the dataset","Unit of observation","Dataset where the list of UoOs is fully listed and with 1 record per UoO","How many observations per UoO","Variables capturing the UoO","Primary key","Parameters",null,null,null,null,null,null,null,null,null,null,null,null],"metadata_content":["D3_covid_episodes","contains the episodes of COVID observed in all persons in the study population. Each episode is separated from the next by at least 60 days","a person in the study population D4_study_population","D4_study_population","as many as the observed episodes of COVID (>=0)","person_id","person_id date",null,null,null,null,null,null,null,null,null,null,null,null,null]},"columns":[{"id":"medatata_name","name":"medatata_name","type":"character"},{"id":"metadata_content","name":"metadata_content","type":"character"}],"sortable":false,"searchable":true,"pagination":false,"highlight":true,"bordered":true,"striped":true,"style":{"maxWidth":1800},"height":"600px","dataKey":"71742eaa6ff1b58cbcef869cab531549"},"children":[]},"class":"reactR_markup"},"evals":[],"jsHooks":[]}</script>
</div>
<div id="Data Model" class="tabcontent">
<div id="htmlwidget-2" class="reactable html-widget " style="width:auto;height:600px;"></div>
<script type="application/json" data-for="htmlwidget-2">{"x":{"tag":{"name":"Reactable","attribs":{"data":{"VarName":["person_id","date",null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null],"Description":["unique person identifier",null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null],"Format":["character","date",null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null],"Vocabulary":["from CDM PERSONS",null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null],"Parameters":[null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null],"Notes and examples":[null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null],"Source tables and variables":[null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null],"Retrieved":[null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null],"Calculated":["yes","yes",null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null],"Algorithm_id":[null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null],"Rule":["selected from D4_study_population/person_id based on whether there is at least a covid episode, sources for episode are datasource-specific","# OVERALL STRATEGY \r\n# 1 rbind all files that imply covid\r\n# 2 remove recods closer than 60 days to a previous record\r\n# 3 filter only episodes occurring during the study period and save",null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null]},"columns":[{"id":"VarName","name":"VarName","type":"character"},{"id":"Description","name":"Description","type":"character"},{"id":"Format","name":"Format","type":"character"},{"id":"Vocabulary","name":"Vocabulary","type":"character"},{"id":"Parameters","name":"Parameters","type":"logical"},{"id":"Notes and examples","name":"Notes and examples","type":"logical"},{"id":"Source tables and variables","name":"Source tables and variables","type":"logical"},{"id":"Retrieved","name":"Retrieved","type":"logical"},{"id":"Calculated","name":"Calculated","type":"character"},{"id":"Algorithm_id","name":"Algorithm_id","type":"logical"},{"id":"Rule","name":"Rule","type":"character"}],"sortable":false,"searchable":true,"pagination":false,"highlight":true,"bordered":true,"striped":true,"style":{"maxWidth":1800},"height":"600px","dataKey":"675eb78de847b765d3c7f92b1655ba2a"},"children":[]},"class":"reactR_markup"},"evals":[],"jsHooks":[]}</script>
</div>
<div id="Parameters" class="tabcontent">
<div id="htmlwidget-3" class="reactable html-widget " style="width:auto;height:600px;"></div>
<script type="application/json" data-for="htmlwidget-3">{"x":{"tag":{"name":"Reactable","attribs":{"data":{"parameter in the variable name":[null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null],"values":[null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null],"name of macro":[null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null]},"columns":[{"id":"parameter in the variable name","name":"parameter in the variable name","type":"logical"},{"id":"values","name":"values","type":"logical"},{"id":"name of macro","name":"name of macro","type":"logical"}],"sortable":false,"searchable":true,"pagination":false,"highlight":true,"bordered":true,"striped":true,"style":{"maxWidth":1800},"height":"600px","dataKey":"f545894952d01490ab535e7af1d88bc2"},"children":[]},"class":"reactR_markup"},"evals":[],"jsHooks":[]}</script>
</div>
<div id="Examples" class="tabcontent">
<div id="htmlwidget-4" class="reactable html-widget " style="width:auto;height:600px;"></div>
<script type="application/json" data-for="htmlwidget-4">{"x":{"tag":{"name":"Reactable","attribs":{"data":{"person_id":["P00010","P00010","P00042","P00067","P00068","P00075","P00235","P00416","P00467","P00703","P00816","P00962","P00963","P01069","P01080","P01087","P01142","P01147","P01324","P01359"],"date":["2021-01-12T00:00:00Z","2021-05-12T00:00:00Z","2020-05-25T00:00:00Z","2021-01-17T00:00:00Z","2021-01-10T00:00:00Z","2021-02-10T00:00:00Z","2021-03-18T00:00:00Z","2020-11-27T00:00:00Z","2020-11-06T00:00:00Z","2021-03-04T00:00:00Z","2021-01-04T00:00:00Z","2020-12-12T00:00:00Z","2020-07-27T00:00:00Z","2021-01-16T00:00:00Z","2021-01-13T00:00:00Z","2020-11-28T00:00:00Z","2020-12-11T00:00:00Z","2020-11-27T00:00:00Z","2020-07-20T00:00:00Z","2021-04-27T00:00:00Z"]},"columns":[{"id":"person_id","name":"person_id","type":"character"},{"id":"date","name":"date","type":"Date"}],"sortable":false,"searchable":true,"pagination":false,"highlight":true,"bordered":true,"striped":true,"style":{"maxWidth":1800},"height":"600px","dataKey":"1b1b325ef3a0cbc799c3977f5f4faa51"},"children":[]},"class":"reactR_markup"},"evals":[],"jsHooks":[]}</script>
</div>
