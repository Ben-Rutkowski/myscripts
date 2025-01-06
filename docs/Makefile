src  =$(wildcard *.md)
html =$(patsubst %.md,%.html,$(src))

all: $(html)

%.html: %.md
	echo "<html>\n<head>\n<link rel=\"stylesheet\" href=\"style.css\">\n</head>\n<body>" > html/$@
	markdown $< >> html/$@
	echo "</body>\n</html>" >> html/$@
