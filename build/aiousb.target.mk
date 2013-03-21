# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := aiousb
DEFS_Debug := \
	'-D_LARGEFILE_SOURCE' \
	'-D_FILE_OFFSET_BITS=64' \
	'-DBUILDING_NODE_EXTENSION' \
	'-DDEBUG' \
	'-D_DEBUG'

# Flags passed to all source files.
CFLAGS_Debug := \
	-fPIC \
	-Wall \
	-pthread \
	-m64 \
	-g \
	-O0

# Flags passed to only C files.
CFLAGS_C_Debug :=

# Flags passed to only C++ files.
CFLAGS_CC_Debug := \
	-fno-rtti \
	-fno-exceptions

INCS_Debug := \
	-I$(srcdir)/src \
	-I/usr/include/aiousb \
	-I/usr/include/libusb-1.0 \
	-I/home/parallels/.node-gyp/0.8.18/src \
	-I/home/parallels/.node-gyp/0.8.18/deps/uv/include \
	-I/home/parallels/.node-gyp/0.8.18/deps/v8/include

DEFS_Release := \
	'-D_LARGEFILE_SOURCE' \
	'-D_FILE_OFFSET_BITS=64' \
	'-DBUILDING_NODE_EXTENSION'

# Flags passed to all source files.
CFLAGS_Release := \
	-fPIC \
	-Wall \
	-pthread \
	-m64 \
	-O2 \
	-fno-strict-aliasing \
	-fno-tree-vrp

# Flags passed to only C files.
CFLAGS_C_Release :=

# Flags passed to only C++ files.
CFLAGS_CC_Release := \
	-fno-rtti \
	-fno-exceptions

INCS_Release := \
	-I$(srcdir)/src \
	-I/usr/include/aiousb \
	-I/usr/include/libusb-1.0 \
	-I/home/parallels/.node-gyp/0.8.18/src \
	-I/home/parallels/.node-gyp/0.8.18/deps/uv/include \
	-I/home/parallels/.node-gyp/0.8.18/deps/v8/include

OBJS := \
	$(obj).target/$(TARGET)/src/aiousb.o \
	$(obj).target/$(TARGET)/src/device.o

# Add to the list of files we specially track dependencies for.
all_deps += $(OBJS)

# CFLAGS et al overrides must be target-local.
# See "Target-specific Variable Values" in the GNU Make manual.
$(OBJS): TOOLSET := $(TOOLSET)
$(OBJS): GYP_CFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE))
$(OBJS): GYP_CXXFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE))

# Suffix rules, putting all outputs into $(obj).

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(srcdir)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# Try building from generated source, too.

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj).$(TOOLSET)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# End of this set of suffix rules
### Rules for final target.
LDFLAGS_Debug := \
	-pthread \
	-rdynamic \
	-m64

LDFLAGS_Release := \
	-pthread \
	-rdynamic \
	-m64

LIBS := \
	-lusb-1.0

$(obj).target/aiousb.node: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(obj).target/aiousb.node: LIBS := $(LIBS)
$(obj).target/aiousb.node: TOOLSET := $(TOOLSET)
$(obj).target/aiousb.node: $(OBJS) FORCE_DO_CMD
	$(call do_cmd,solink_module)

all_deps += $(obj).target/aiousb.node
# Add target alias
.PHONY: aiousb
aiousb: $(builddir)/aiousb.node

# Copy this to the executable output path.
$(builddir)/aiousb.node: TOOLSET := $(TOOLSET)
$(builddir)/aiousb.node: $(obj).target/aiousb.node FORCE_DO_CMD
	$(call do_cmd,copy)

all_deps += $(builddir)/aiousb.node
# Short alias for building this executable.
.PHONY: aiousb.node
aiousb.node: $(obj).target/aiousb.node $(builddir)/aiousb.node

# Add executable to "all" target.
.PHONY: all
all: $(builddir)/aiousb.node
