with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;

package STD_String_Handling is

  type STD_String is private;

  procedure Set(Target: out STD_String; Source: in String);

  function To_STD_String(Source: in String) return STD_String;

  function Get_Length(S: in STD_String) return Natural;

  function Get(Source: in STD_String) return String;

  procedure Set_Character(Target: in out STD_String; Position: in Positive; Char: in Character);

  function Get_Character(From_String: in STD_String; Position: in Positive) return Character;

  procedure Append_Character(Target: in out STD_String; Char: in Character);

private

  type STD_String is new Unbounded_String;

end STD_String_Handling;
