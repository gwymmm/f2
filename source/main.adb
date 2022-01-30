with Ada.Command_Line; use Ada.Command_Line;
with Ada.Exceptions; use Ada.Exceptions;
with Ada.Text_IO; use Ada.Text_IO;

with Cmd_Args;


procedure Main is
  Opts: Cmd_Args.Execution_Options;
begin

  Put_Line("Test");
  Cmd_Args.Read(Opts);

  Set_Exit_Status(Success);

exception
  when Error: others =>
    Put_Line(Exception_Name(Error) & ": " & Exception_Message(Error));
    Set_Exit_Status(Failure);

end Main;
