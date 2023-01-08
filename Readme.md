# Generate PDF from Markdown

Make sure it has the following front matter:

	---
	title: Title of the papaer
	subtitle: Subtitle of the paper
	lecturer: Professor
	course: Course number
	module: Module name
	term: term
	matrikelnummer: Student number
	file: Filename to save to (pdf will be appended)
	---

Export whole MD with front matter to index.md, include all images
Export a bib file with the bibliography to bookends.bib

In the shell run `./build.sh`

