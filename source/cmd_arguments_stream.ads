-- TODO PACKAGE INFO --

package CMD_Arguments_Stream is

  type Arguments is private;

  function Has_Next_Argument(Args: in Arguments) return Boolean;

private

  type Arguments is record
    Index: Natural := 0;
  end record;

  function Get_Argument_Number return Natural;

  function Has_Next_Argument(Args: in Arguments) return Boolean is
    (if Args.Index < Get_Argument_Number then True else False);

end CMD_Arguments_Stream;
