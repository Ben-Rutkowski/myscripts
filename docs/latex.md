#### [My Scripts](index.html) > LaTeX

## LaTeX
Creates a LaTeX project template.

Creates a directory for a LaTeX project and adds a `main.tex`, `Makefile` and `.run.sh`. Then `make` is called and all output files are put in the `output` directory.

#### Usage
Call `create.sh` with a name as an argument to create the template. 

Call `make` to compile the PDF.

Call `.run.sh` to open the PDF.

---

#### Scripts
> `create.sh $1`

Creates the LaTeX project template.

Takes a name as an argument. Creates a LaTeX project with that name. Creates the `Makefile` and `.run.sh` files. Creates an `output` directory. Builds the initial template.

---

#### Makefile
Compiles LaTeX document into PDF.

> `Makefile`

