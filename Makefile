# Generations
### Hooks for the editor to set the default target
current: target
target = Makefile
-include target.mk
target: $(target)

##################################################################

Sources = Makefile .gitignore README.md sub.mk LICENSE.md
include sub.mk
Sources += .gitmodules
# include $(ms)/perl.def

##################################################################

## Content

## This is a meta-repo, whose main purpose is to make a working directory with other repos

## MS 2 (Gamma approximations)
dirs += generation_links

######################################################################

dfiles: $(dirs:%=%/Makefile)
Sources += $(dirs)

######################################################################

-include $(ms)/git.mk
-include $(ms)/visual.mk
-include $(ms)/hmodules.mk

# -include $(ms)/wrapR.mk
# -include $(ms)/oldlatex.mk
