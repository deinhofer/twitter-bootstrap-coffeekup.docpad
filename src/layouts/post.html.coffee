---
layout: default
---

article id: "post", class: "post", ->
  h1 @document.title
  div class: "post-content", @content

  if @document.relatedDocuments and @document.relatedDocuments.length
    section id: "related", ->
      h3 "Related Posts"
      nav class: "linklist", ->
        ul ->
          for document in @document.relatedDocuments
            li ->
              a href: document.url, document.title
