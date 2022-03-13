with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;

package String_Parser is

  type Source_String is private;

  procedure Initialize(New_Source_String: out Source_String; From_This_String: in String);

  function Has_Next_Character(Source: in Source_String) return Boolean;

  procedure Next_Character(Source: in out Source_String; New_Character: out Character);

private

  type Source_String is record
    Source: Unbounded_String;
    Current_Index: Natural;
  end record;

end String_Parser;
