-- TODO PACKAGE INFO --
with Ada.Command_Line;

package body CMD_Arguments_Stream is

  function Get_Argument_Number return Natural is
    (Ada.Command_Line.Argument_Count);

  procedure Get_Next_Argument(Args: in out Arguments; Next_Arg: out STD_String) is
    Temp: constant String := Ada.Command_Line.Argument(Args.Index);
  begin
    Set(Next_Arg, Temp);
  end Get_Next_Argument;

end CMD_Arguments_Stream;
