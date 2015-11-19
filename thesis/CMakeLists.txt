# Copyright (C) 2015 Peter Nirschl.
#
# This document is released under the terms of the Creative Commons Attribution-ShareAlike 4.0 International License.
# For further information, please refer to:  http://creativecommons.org/licenses/by-sa/4.0/
#

ADD_LATEX_DOCUMENT(thesis.tex
#	BIBFILES literature.bib 
	MANGLE_TARGET_NAMES
	INPUTS intro.tex rsq.tex eval.tex conclusion.tex
	DEFAULT_PDF
)
