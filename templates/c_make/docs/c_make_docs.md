# **Shell Script** | Create Make Root
Creates the `Makefile` and `.config.mk` for the root directory of a project

### Usage
Run `create_make_root.sh` and then configure `.config.mk` and `Makefile` in the root directory.

## Makefile | (in root directory)
Recursively calls Makefiles in sub directories. Must configure all the object directories of sub directories. Then create the recursive build commands and clean commands for each sub directory.

## .config.mk
For each sub directory, specify a directory, source directory, header directory and object directory. The compiler settings are all set here as well.


# **Shell Script** | Create Make Sub
Creates a sub directory and the **Makefile** inside.

### Usage
Run `create_make_sub.sh` with the name of the sub directory as an argument. Then configure the `Makefile`.

## Makefile | (in sub directory)
When configuring, specify the sub's name, directory, source directory, and header directory. Then specify the source and header units. May use either FirstOrderSource or SecondOrderSource (defined in `.config.mk`). Then define the compiler commands for the sub unit. Lastly, configure the build command.
