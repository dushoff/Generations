# Generations
### Hooks for the editor to set the default target
current: target
target = Makefile
-include target.mk
target: $(target)

##################################################################

Sources = Makefile .ignore README.md sub.mk LICENSE.md
include sub.mk
Sources += .gitmodules
# include $(ms)/perl.def

##################################################################

## Content

## This is a meta-repo, whose main purpose is to make a working directory with other repos

## MS 2 (Gamma approximations)

mdirs += generation_links Generation_talks
dirs += $(mdirs)

######################################################################

dfiles: $(dirs:%=%/Makefile)
Sources += $(dirs)

######################################################################

-include $(ms)/git.mk
-include $(ms)/visual.mk
-include $(ms)/modules.mk

# -include $(ms)/wrapR.mk
# -include $(ms)/oldlatex.mk
