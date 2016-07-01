HA$PBExportHeader$libexport.sra
$PBExportComments$Generated Application Object
forward
global type libexport from application
end type
global transaction sqlca
global dynamicdescriptionarea sqlda
global dynamicstagingarea sqlsa
global error error
global message message
end forward

global type libexport from application
string appname = "libexport"
end type
global libexport libexport

type prototypes
SUBROUTINE OutputDebugString (String lpszOutputString)  LIBRARY "kernel32.dll" ALIAS FOR "OutputDebugStringW";

end prototypes

type variables

/*
juste pour un test : $$HEX1$$e900$$ENDHEX$$
*/

end variables
on libexport.create
appname="libexport"
message=create message
sqlca=create transaction
sqlda=create dynamicdescriptionarea
sqlsa=create dynamicstagingarea
error=create error
end on

on libexport.destroy
destroy(sqlca)
destroy(sqlda)
destroy(sqlsa)
destroy(error)
destroy(message)
end on

event open;
open(w_export)

end event

