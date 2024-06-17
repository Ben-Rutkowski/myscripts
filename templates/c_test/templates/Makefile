include $(ROOT)/$(CONFIG_FILE)


# === Source ===
test_SRC =$(call FirstOrderSource,$(CURDIR),.cpp) 
test_OBJ =$(call SourceToObject,$(test_SRC),$(obj_DIR))

# sub_SRC =$(sub_SRCDIR)/source.cpp
# sub_OBJ =$(call SourceToObject,$(sub_SRC),$(obj_DIR))

# OBJ =$(test_OBJ) $(call Prepend,$(sub_DIR),$(sub_OBJ))


# === Compiler ===
comp_unit =$(CXX)
flag_unit =$(CXX_flag) -c
inc_unit  =

comp_test =$(CXX)
flag_test =$(CXX_flag)
inc_test  =
link_test =


# === Build ===
test: $(obj_DIR) $(test_OBJ) # $(sub_OBJ)
	@echo "--- Linking Test Case ---"
	$(comp_test) $(OBJ) $(flag_test) $(inc_test) $(link_test) -o $@

.SECONDEXPANSION:
$(test_OBJ): $(obj_DIR)/%.o: $(call NameToSource,%,$(test_SRC),.cpp)
	@echo "--- Compiling Test Object <$(notdir $<)> ---"
	$(comp_unit) $< $(flag_unit) $(inc_unit) -o $@

# $(sub_OBJ):
# 	$(call RecurMake,$(sub_DIR),$@)


# --- Directory Management ---
$(obj_DIR):
	@mkdir -p $(obj_DIR)
