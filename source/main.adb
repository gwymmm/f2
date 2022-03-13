with Ada.Command_Line;
with Ada.Exceptions; use Ada.Exceptions;
with Ada.Text_IO; use Ada.Text_IO;
--with Ada.Directories;

with CMD_Args;


procedure Main is
--  package Dirs renames Ada.Directories;
--  use type Dirs.File_Kind;
  Opts: CMD_Args.Execution_Options;
--  Out_File: File_Type;
begin

  --  Put_Line("Test");
  Cmd_Args.Read(Opts);

  --  Put_Line("Current Directory: " & Ada.Directories.Current_Directory);

  --  if Dirs.Exists("zubi") and then Dirs.Kind("zubi")=Dirs.Directory then
  --    Put_Line("zubi already there");
  --  else
  --    Ada.Directories.Create_Directory("zubi");
  --    Put_Line("zubi dir created");
  --  end if;

  --  Open(Out_File, Append_File, "./Dokumente/idi.na.hui");
  --  Put_Line(Out_File, "SUCCESS");
  --  Close(Out_File);

  Ada.Command_Line.Set_Exit_Status(Ada.Command_Line.Success);

exception
  when Error: others =>
    Put_Line(Exception_Name(Error) & ": " & Exception_Message(Error));
    Ada.Command_Line.Set_Exit_Status(Ada.Command_Line.Failure);

end Main;
