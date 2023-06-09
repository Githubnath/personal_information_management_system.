# =============================================================================
# @file    Makefile
# @brief   Trivial makefile for compiling AppleScript
# @author  Emenike Nathaniel
# @date    2023-06-4
# @license Please see the file named LICENSE in the project directory
# @website https://github.com/Githubnath/personal_management_system_
# =============================================================================

sources = $(shell find . -iname '*.applescript' | sed 's/ /\\ /g')

compile: $(sources:.applescript=.scpt)

%.scpt: %.applescript
	osacompile -o "$@" "$<"
