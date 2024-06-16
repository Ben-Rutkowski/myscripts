ROOT ?=$(CURDIR)


# === Source Directories ===
# sub_DIR=$(ROOT)/sub

tst_DIR  =$(ROOT)/test
bld_DIR  =$(ROOT)/build
obj_DIR  =objects
comp_DIR =compiled
# bld_NAME=unnamed_DEBUG


# === Compiler ===
# CXX 	   =clang++
# CXX_flag =-Wall -fdiagnostics-color=alwasy -g
# CXX_inc  =
# CXX_link =


# --- Macros ---
#     :FirstOrderSource:
# Finds all the sources in a given directory
define FirstOrderSource # $1 base dir; $2 extension
	$(wildcard $1/*$2)
endef

#     :SecondOrderSource:
# Finds all of the sources in each directory in the given directory
# with the given extension
define SecondOrderSource # $1 base dir; $2 extension
	$(foreach dir,$(wildcard $1/*/), \
		$(wildcard $(dir)*$2) \
	)
endef

#     :NameToSource: (SECONDEXPANSION)
# Takes ONE name of a unit and returns the source file;
# if there are multiple sources with the same name, returns all of them
define NameToSource # $1 name; $2 source list; $3 extension
	$$(foreach dir,$$(dir $2), \
		$$(filter \
			$$(dir)$1$3, \
			$2 \
		) \
	)
endef

#     :SourceToObject:
# Takes a LIST of sources and returns a list of objects with the same name
# but in the given object directory
define SourceToObject # $1 source list; $2 object dir
	$(patsubst %,$2/%.o, \
		$(basename $(notdir $1)) \
	)
endef
