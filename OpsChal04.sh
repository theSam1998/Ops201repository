#!/bin/bash
# Script: Ops 201 Class 03 Ops Challenge
# Author: Sam Allan
# Date of latest revision:2/23/2023
# Purpose: write a script that creates four directories, contains the 4 directories in an array, and references the array variable to create a new file in each directory.
# Variables: varioble
# Arrays: FolderMaker


#Array
FolderMaker=("dir1" "dir2" "dir3" "dir4")
#Variable
varioble="file.txt"
#Main
mkdir ${FolderMaker[*]}
# finds all the folders, runs touch command in all directories, creates "file.txt" from $varioble in each directory.
find . -type d -exec touch {}/$varioble \;

#End


