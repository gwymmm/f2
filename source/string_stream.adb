package body String_Stream is

  procedure Initialize(New_Source_String: out Source_String; From_This_String: in String) is
  begin
    New_Source_String.Text_Buffer:= To_STD_String(From_This_String);
    New_Source_String.Current_Index := 0;
  end Initialize;

  function Has_Next_Character(Source: in Source_String) return Boolean is
  begin
    if Source.Current_Index < Get_Length(Source.Text_Buffer) then
      return True;
    else
      return False;
    end if;
  end Has_Next_Character;

  procedure Next_Character(Source: in out Source_String; New_Character: out Character) is
  begin
    Source.Current_Index := Source.Current_Index + 1;
    New_Character := Get_Character(Source.Text_Buffer, Source.Current_Index);
  end Next_Character;

end String_Stream;
