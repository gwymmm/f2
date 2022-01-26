with Ada.Text_IO; use Ada.Text_IO;

package body Cmd_Args is
  
  type Command_Line_Arguments is record
    Current_Index: Positive;
    Last_Index: Positive;
    Buffer: Unbounded_String;
  end record;
  
  procedure Init(Args: out Command_Line_Arguments) is
  begin
    Args.Buffer := To_Unbounded_String("XXX");
  end Init;
  
  procedure Read(Options: out Execution_Options) is
    Arguments: Command_Line_Arguments;
  begin
    Init(Arguments);
    Put_Line(To_String(Arguments.Buffer));
  end Read;
  
end Cmd_Args;
