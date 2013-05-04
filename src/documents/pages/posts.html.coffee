---
title: Posts
layout: page
pageOrder: 2
---

nav class: "linklist", ->
	for document in @getCollection('posts').toJSON()
		li -> span document.date.toDateString()
		text "&raquo;"
		a href document.url, document.title
