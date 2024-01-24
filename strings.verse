strings<public> := module:

    # Converts the string to a message
    ToMessage<localizes><public>(String:string):message="{String}"

    # Extracts a substring from a string, given start and end indices.
    (String:string).Substring<public>(From:int, To:int)<transacts>:string=
        var Result:string = ""
        for(Index->Char : String):
            if(Index >= From and Index <= To):
                set Result += "{Char}"
        return Result

    # Concatenates two or more strings into one.
    Concat<public>(Strings:[]string)<transacts>:string=
        var Result:string = ""
        for(String : Strings):
            set Result += "{String}"
        return Result

    # Returns the index of the first occurrence of a specified value in a string.
    (String:string).IndexOf<public>(Value:char)<transacts>:int=
        var Result:int = -1
        for(Index->Char : String):
            if(Char = Value):
                set Result = Index
                return Result
        return Result

    # Returns the index of the last occurrence of a specified value in a string.
    (String:string).LastIndexOf<public>(Value:char)<transacts>:int=
        var Result:int = -1
        for(Index->Char : String):
            if(Char = Value):
                set Result = Index
        return Result


    # Converts all characters in a string to uppercase.
    (String:string).ToUpper<public>()<transacts>:string=
        var UpperMap:[char]char = map{'a' => 'A', 'b' => 'B', 'c' => 'C', 'd' => 'D', 'e' => 'E', 'f' => 'F', 'g' => 'G', 'h' => 'H', 'i' => 'I', 'j' => 'J', 'k' => 'K', 'l' => 'L', 'm' => 'M', 'n' => 'N', 'o' => 'O', 'p' => 'P', 'q' => 'Q', 'r' => 'R', 's' => 'S', 't' => 'T', 'u' => 'U', 'v' => 'V', 'w' => 'W', 'x' => 'X', 'y' => 'Y', 'z' => 'Z'}
        var Result:string = ""
        for(Char : String):
            if(Upper := UpperMap[Char]):
                set Result += "{Upper}"
            else:
                set Result += "{Char}"
        return Result

    # Converts all characters in a string to lowercase.
    (String:string).ToLower<public>()<transacts>:string=
        var LowerMap:[char]char = map{'A' => 'a', 'B' => 'b', 'C' => 'c', 'D' => 'd', 'E' => 'e','F' => 'f', 'G' => 'g', 'H' => 'h', 'I' => 'i', 'J' => 'j','K' => 'k', 'L' => 'l', 'M' => 'm', 'N' => 'n', 'O' => 'o','P' => 'p', 'Q' => 'q', 'R' => 'r', 'S' => 's', 'T' => 't', 'U' => 'u', 'V' => 'v', 'W' => 'w', 'X' => 'x', 'Y' => 'y', 'Z' => 'z'}
        var Result:string = ""
        for(Char : String):
            if(Lower := LowerMap[Char]):
                set Result += "{Lower}"
            else:
                set Result += "{Char}"
        return Result

    # Removes whitespace from both ends of a string.
    (String:string).Trim<public>()<transacts>:string=
        var Result:string = ""
        for(Char : String):
            if(Char <> ' '):
                set Result += "{Char}"
        return Result

    # Removes whitespace from the beginning of a string.
    (String:string).TrimStart<public>()<transacts>:string=
        var Result:string = ""
        for(Index->Char : String):
            if(Char = ' '):
                set Result += ""
            else:
                set Result += String.Substring(Index, String.Length)
                return Result
        return Result

    # Removes whitespace from the end of a string.
    (String:string).TrimEnd<public>()<transacts>:string=
        var Result:string = ""
        Reverse := String.Reverse()
        return Reverse.TrimStart().Reverse()

    # Splits a string into an array of substrings based on a delimiter.
    (String:string).Split<public>(Delimiter:char)<transacts>:[]string=
        var Result:[]string = array{}
        var current:string = ""
        for(Char : String):
            if(Char = Delimiter):
                set Result += array{current}
                set current = ""
            else:
                set current += "{Char}"
        set Result += array{current}
        return Result

    # Checks if the string starts with a specified substring.
    (String:string).StartsWith<public>(Value:string)<transacts><decides>:void=
        var Result:logic = false
        for(Char : String):
            if(Char = Value):
                set Result = true
                Result
            else:
                Result
        Result

    # Checks if the string ends with a specified substring.
    (String:string).EndsWith<public>(Value:string)<transacts><decides>:void=
        var Result:logic = false
        for(Char : String):
            if(Char = Value):
                set Result = true
            else:
                Result
        Result

    # Checks if the string contains a specified substring.
    (String:string).Contains<public>(Value:string)<transacts><decides>:void=
        var Result:logic = false
        for(Char : String):
            if(Char = Value):
                set Result = true
                Result
            else:
                Result
        Result

    # Returns the character at a specified index in a string.
    (String:string).CharAt<public>(Index:int)<transacts>:string=
        var Result:string = ""
        for(Ind->Char : String):
            if(Ind = Index):
                set Result = "{Char}"
                return Result
        return Result

    # Reverses the characters in a string.
    (String:string).Reverse<public>()<transacts>:string=
        var Result:string = ""
        for(Char : String):
            set Result = "{Char}" + Result
        return Result

    # Checks if a string is null or empty.
    (String:string).IsEmpty<public>()<transacts><decides>:void=
        if(String = "") then true else false

    # Checks if two strings are equal.
    (String:string).Equals<public>(Value:string)<transacts><decides>:void=
        var Result:logic = false
        for(Char : String):
            if(Char = Value):
                set Result = true
                Result
            else:
                Result
        Result
    
    # Converts a string to an integer.
    (String:string).ToInt<public>()<transacts>:int=
        var Result:int = 0
        for(Char : String):
            if:
                Char = '0'
                set Result = Result * 10 + 0
            else if:
                Char = '1'
                set Result = Result * 10 + 1
            else if:
                Char = '2'
                set Result = Result * 10 + 2
            else if:
                Char = '3'
                set Result = Result * 10 + 3
            else if:
                Char = '4'
                set Result = Result * 10 + 4
            else if:
                Char = '5'
                set Result = Result * 10 + 5
            else if:
                Char = '6'
                set Result = Result * 10 + 6
            else if:
                Char = '7'
                set Result = Result * 10 + 7
            else if:
                Char = '8'
                set Result = Result * 10 + 8
            else if:
                Char = '9'
                set Result = Result * 10 + 9
        return Result
