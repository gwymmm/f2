package body STD_String_Handling is
  
  procedure Set(Target: out STD_String; Source: in String) is
  begin
    Target := To_Unbounded_String(Source);
  end Set;
  
  function Get(Source: in STD_String) return String is
  begin
    return To_String(Source);
  end Get;
  
  procedure Set_Character(Target: in out STD_String; Position: in Positive; Char: in Character) is
  begin
    Replace_Element(Target, Position, Char);
  end Set_Character;
  
  function Get_Character(From_String: in STD_String; Position: in Positive) return Character is
  begin
    return Element(From_String, Position);
  end Get_Character;
  
  procedure Append_Character(Target: in out STD_String; Char: in Character) is
  begin
    Append(Target, Char);
  end Append_Character;
      
end STD_String_Handling;
