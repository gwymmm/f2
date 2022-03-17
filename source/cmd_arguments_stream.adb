-- TODO PACKAGE INFO --
with Ada.Command_Line;

package body CMD_Arguments_Stream is

  function Get_Argument_Number return Natural is
    (Ada.Command_Line.Argument_Count);

end CMD_Arguments_Stream;
