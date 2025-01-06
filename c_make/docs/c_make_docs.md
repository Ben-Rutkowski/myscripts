# Structure
A project is a collection of sub-directories which contain source code and object files. There are two phases of building a project.

1. Build the object files of each subdirectory
2. Compile every object file into an executable

### Global Variables
Are defined in `.config.mk`. Configure *sub-directories*, *common variables* and *compiler*. All global variables are paths relative to the root directory.

#### Sub-Directories
Defines paths for *src*, *header*, *object*.

#### Common Variables
Defines names for *object*, *test*, and *build* directories, as well as the build name.

#### Compiler
Defines compiler flags split into *flags*, *includes*, and *links*.

---

# Scripts

## `create_make_root.sh`
> Initializes project by creating a `Makefile` and `config.mk`.

#### Usage
> Run first and then configure `Makefile` and `config.mk`.

## `create_make_sub.sh`
> Creates a sub directory
