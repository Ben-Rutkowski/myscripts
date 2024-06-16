include $(CONFIG_FILE)


# === Source ===
test_SRC =$(call FirstOrderSource,$(CURDIR),.cpp) 
test_OBJ =$(call SourceToObject,$(test_SRC),$(obj_DIR))

# sub_SRC =$(sub_DIR)/source.cpp
# sub_OBJ =$(call SourceToObject,$(sub_SRC),$(sub_DIR)/$(obj_DIR))


# === Build ===
$(comp_DIR)/test: $(test_OBJ) # $(sub_OBJ)
	@mkdir -p $(obj_DIR)
	@echo "Build Test Case"

.SECONDEXPANSION:
$(test_OBJ): $(obj_DIR)/%.o: $(call NameToSource,%,$(test_SRC),.cpp)
	@echo "--- Compiling Test Object <$(notdir $<)> ---"

# $(sub_OBJ):
# 	$(call RecurObject,$@,$(sub_DIR))


# --- Macros ---
#     :RecurObject:
# Builds the object files by recursively calling make in the
# subdirectory containing the object file
define RecurObject # $1 object list; $2 subdirectory
	$(MAKE) -C $2 $(patsubst %,objects/%,$(notdir $1)) CONFIG_FILE=$(CONFIG_FILE) ROOT=$(ROOT)
endef
