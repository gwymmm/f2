with Ada.Text_IO; use Ada.Text_IO;
with Ada.Command_Line;

package body CMD_Args is

  type Argument_Status is (Still_Arguments_Left, No_Arguments_Left);

  type Command_Line_Arguments is record
    Number_Of_Arguments: Natural;
    Current_Argument_Index: Positive;
    Status: Argument_Status;
--    Current_Character_Index: Positive;
--    Argument_Buffer: Unbounded_String;
--    Current_Position: General_Position;
  end record;

  procedure Init(Args: out Command_Line_Arguments) is
  begin

    Args.Number_Of_Arguments := Ada.Command_Line.Argument_Count;
    Args.Current_Argument_Index := 1;

    if Args.Number_Of_Arguments = 0 then
      Args.Status := No_Arguments_Left;
    else
      Args.Status := Still_Arguments_Left;
    end if;

  end Init;

  procedure Get_Next_Argument(Args: in out Command_Line_Arguments;
			      New_Argument: out Unbounded_String) is
  begin

    New_Argument := To_Unbounded_String(Ada.Command_Line.Argument(Args.Current_Argument_Index));

    if Args.Current_Argument_Index < Args.Number_Of_Arguments then
      -- still arguments left
      Args.Current_Argument_Index := Args.Current_Argument_Index + 1;
      Args.Status := Still_Arguments_Left;
    else
      Args.Status := No_Arguments_Left;
    end if;

  end Get_Next_Argument;

  procedure Read(Options: out Execution_Options) is
    Arguments: Command_Line_Arguments;
    Current_Argument: Unbounded_String;
  begin
    Init(Arguments);

    -- TODO parse arguments

    while Arguments.Status = Still_Arguments_Left loop

      Get_Next_Argument(Arguments, Current_Argument);
      Put_Line(To_String(Current_Argument));

    end loop;

    --Put_Line(To_String(Arguments.Buffer));
  end Read;

end CMD_Args;
