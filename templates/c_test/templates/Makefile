include $(CONFIG_FILE)

# === Source ===
# proj_SRC = $(sub_DIR)/source.cpp
# test_SRC = $(wildcard ./*.cpp)


# === Auxiliary Variables ===
comp_DIR =compiled
obj_DIR  =compiled/objects
proj_OBJ =$(call SourceToObject,$(proj_SRC),$(obj_DIR))
test_OBJ =$(call SourceToObject,$(test_SRC),$(obj_DIR))


# === Build ===
$(comp_DIR)/test: $(proj_OBJ) $(test_OBJ)
	@mkdir -p $(comp_DIR)
	@mkdir -p $(obj_DIR)

	@echo "Build Test Case"

.SECONDEXPANSION:
$(proj_OBJ): $(obj_DIR)/%.o: # $(call NameToSource,%,$(proj_SRC),.cpp)
	@echo "Building App Source: $@ from $<"


$(test_OBJ): $(obj_DIR)/%.o: # $(call NameToSource,%,$(test_SRC),.cpp)
	@echo "Building Test Source: $@ from $<"
