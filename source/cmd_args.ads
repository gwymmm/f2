with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;

package Cmd_Args is
  
  type Execution_Options is record
    Flag_Help_Set: Boolean;
    Input_File_Name: Unbounded_String;
  end record;
  
  procedure Read(Options: out Execution_Options);
    
end Cmd_Args;
