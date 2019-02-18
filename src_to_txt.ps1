<#
.synopsis
Author: Gideon Naude CoEx
.Description
This script will add a .txt extention to all .src file in a folder
#>

param (
    [parameter(mandatory=$true)] [String] $path
)

Set-ExecutionPolicy RemoteSigned
Get-ChildItem $path *.src | Rename-Item -NewName {$_.name + '.txt'}