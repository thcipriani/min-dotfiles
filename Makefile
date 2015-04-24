LOCAL = $(wildcard $(PWD)/*)
CLEAN_LOCAL = $(notdir $(LOCAL))
LINKED = $(addprefix $(HOME)/., $(CLEAN_LOCAL))

.PHONY: all clean_makefile

all: $(LINKED) clean_makefile

$(HOME)/.%: $(PWD)/%
	ln -sf $< $@

clean_makefile:
	rm -rf -- "$(HOME)/.Makefile"