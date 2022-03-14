with Ada.Command_Line;
with Ada.Exceptions; use Ada.Exceptions;
with Ada.Text_IO; use Ada.Text_IO;

with CMD_Args;


procedure Main is
  Opts: CMD_Args.Execution_Options;
begin
  Cmd_Args.Read(Opts);
  Ada.Command_Line.Set_Exit_Status(Ada.Command_Line.Success);
exception
  when Error: others =>
    Put_Line(Exception_Name(Error) & ": " & Exception_Message(Error));
    Ada.Command_Line.Set_Exit_Status(Ada.Command_Line.Failure);
end Main;
