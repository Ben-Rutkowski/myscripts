#### [My Scripts](root.html) > C Make

## C Make
Manages the building of projects by creating a hierarchy of Makefiles.

A project is a collection of sub-directories which contain source code and object files. There are two phases of building a project.

1. Build the object files of each sub-directory.
2. Compile every object file into an executable.

When `make` is called, the root `Makefile` will call each sub-directory `Makefile` for Step 1, and then continue with Step 2.

#### Usage
Call `create_make_root.sh` on the root directory and then call `create_make_sub.sh $1` to create each sub-directory. 

Initialize the global variables in `config.mk`. Initialize the link commands for the root `Makefile`. Initialize the compile commands for each sub `Makefile`. 

---

### Scripts

> `create_make_root.sh`

Initializes project by creating a `Makefile` and `config.mk` in the project root directory.

> `create_make_sub.sh $1`

Takes name as an argument; creates a sub-directory with the given name and `Makefile`.

---

### Config
Keeps the global variables for the entire project.

> `config.mk`

Global variables are split into three categories.

- **Sub-Directories**: Defines paths for *src*, *header*, *object* for each sub-directory.

- **Common Variables**: Defines names for *object*, *test* and *build* directories, as well as the build name.

- **Compiler**: Defines compiler flags split into *flags*, *includes* and *links*.

---

### Makefile (root)
Lives in root directory; is called by `make` to build the project. 

> `Makefile`

Will recursively call `make` in all sub-directories. User must initialize variables and build commands for each sub-directory call.

- `all_OBJDIR`: a list of every object directories in sub-directories that will be used to build executable.

- `all_NAME`: a list of every sub-directory name.

---

### Makefile (sub)
Lives in each sub-directory.

> `Makefile`

User must specify: 

- Local variables, `sub_NAME`, `sub_DIR`, `sub_SRCDIR` and `sub_HEADDIR`.
- Build variables `SRC`, `HEAD` paths for the sub-directory
- Compile commands for each type of `SRC`

###### Build Variables

Can have multiple `SRC` variables in one sub-directory; e.g. `SRC_foo` and `SRC_bar`. To define such variables use

- `FirstOrderSource`: searches the directory and returns all files with the given extension.

- `SecondOrderSource`: searches every directory in the directory and returns files with the given extension.

`OBJ_foo` variables must be defined for each extension used in the sources `SRC_foo`, `SRC_bar`. A build command must be added for each extension (each `OBJ_foo`).
