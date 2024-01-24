strings<public> := module:

    # Converts the string to a message
    ToMessage<localizes><public>(String:string):message="{String}"

    # Extracts a substring from a string, given start and end indices.
    (String:string).Substring<public>(From:int, To:int):string=
        var result:string = ""
        for(Index->Char : String):
            if(Index >= From and Index <= To):
                set result += "{Char}"
        return result

    # Concatenates two or more strings into one.
    Concat<public>(Strings:[]string):string=
        var result:string = ""
        for(String : Strings):
            set result += "{String}"
        return result

    # Returns the index of the first occurrence of a specified value in a string.
    (String:string).IndexOf<public>(Value:string):int=
        var result:int = -1
        for(Index->Char : String):
            if(Char = Value):
                set result = Index
                return result
        return result

    # Returns the index of the last occurrence of a specified value in a string.
    (String:string).LastIndexOf<public>(Value:string):int=
        var result:int = -1
        for(Index->Char : String):
            if(Char = Value):
                set result = Index
        return result

    # Replaces all specified characters or substrings in a string with new ones.
    (String:string).Replace<public>(Old:string, New:string):string=
        var result:string = ""
        for(Index->Char : String):
            if(Char = Old):
                set result += "{New}"
            else:
                set result += "{Char}"
        return result

    # Converts all characters in a string to uppercase.
    (String:string).ToUpper<public>():string=
        var UpperMap:[string]string = map{"a" => "A", "b" => "B", "c" => "C", "d" => "D", "e" => "E", "f" => "F", "g" => "G", "h" => "H", "i" => "I", "j" => "J", "k" => "K", "l" => "L", "m" => "M", "n" => "N", "o" => "O", "p" => "P", "q" => "Q", "r" => "R", "s" => "S", "t" => "T", "u" => "U", "v" => "V", "w" => "W", "x" => "X", "y" => "Y", "z" => "Z"}
        var result:string = ""
        for(Index->Char : String):
            if(Upper := UpperMap[Char]):
                set result += Upper
            else:
                set result += "{Char}"
        return result
    # Converts all characters in a string to lowercase.
    (String:string).ToLower<public>():string=
        var LowerMap:[string]string = map{"A" => "a", "B" => "b", "C" => "c", "D" => "d", "E" => "e","F" => "f", "G" => "g", "H" => "h", "I" => "i", "J" => "j","K" => "k", "L" => "l", "M" => "m", "N" => "n", "O" => "o","P" => "p", "Q" => "q", "R" => "r", "S" => "s", "T" => "t", "U" => "u", "V" => "v", "W" => "w", "X" => "x", "Y" => "y", "Z" => "z"}
        var result:string = ""
        for(Index->Char : String):
            if(Lower := LowerMap[Char]):
                set result += Lower
            else:
                set result += "{Char}"
        return result

    # Removes whitespace from both ends of a string.
    (String:string).Trim<public>():string=
        var result:string = ""
        for(Index->Char : String):
            if(Char <> " "):
                set result += "{Char}"
        return result

    # Removes whitespace from the beginning of a string.
    (String:string).TrimStart<public>():string=
        var result:string = ""
        for(Index->Char : String):
            if(Char <> " "):
                set result += "{Char}"
            else:
                return result
        return result

    # Removes whitespace from the end of a string.
    (String:string).TrimEnd<public>():string=
        var result:string = ""
        for(Index->Char : String):
            if(Char <> " "):
                set result += "{Char}"
        return result

    # Splits a string into an array of substrings based on a delimiter.
    (String:string).Split<public>(Delimiter:string):[]string=
        var result:[]string = array{}
        var current:string = ""
        for(Index->Char : String):
            if(Char = Delimiter):
                set result = array{current}
                set current = ""
            else:
                set current += "{Char}"
        set result = result + array{current}
        return result

    # Checks if the string starts with a specified substring.
    (String:string).StartsWith<public>(Value:string)<transacts><decides>:void=
        var result:logic = false
        for(Index->Char : String):
            if(Char = Value):
                set result = true
                result
            else:
                result
        result

    # Checks if the string ends with a specified substring.
    (String:string).EndsWith<public>(Value:string)<transacts><decides>:void=
        var result:logic = false
        for(Index->Char : String):
            if(Char = Value):
                set result = true
            else:
                result
        result

    # Checks if the string contains a specified substring.
    (String:string).Contains<public>(Value:string)<transacts><decides>:void=
        var result:logic = false
        for(Index->Char : String):
            if(Char = Value):
                set result = true
                result
            else:
                result
        result

    # Formats a string by replacing placeholders with specified values.
    (String:string).Format<public>(Values:[]string):string=
        var result:string = ""
        var index:int = 0
        for(Index->Char : String):
            if(Char = "\{", set result += Values[index]):
                set index += 1
            else:
                set result += "{Char}"
        return result

    # Returns the character at a specified index in a string.
    (String:string).CharAt<public>(Index:int):string=
        var result:string = ""
        for(Ind->Char : String):
            if(Ind = Index):
                set result = "{Char}"
                return result
        return result

    # Reverses the characters in a string.
    (String:string).Reverse<public>():string=
        var result:string = ""
        for(Index->Char : String):
            set result = "{Char}" + result
        return result

    # Checks if a string is null or empty.
    (String:string).IsEmpty<public>()<transacts><decides>:void=
        if(String = "") then true else false

    # Compares two strings and returns an integer indicating their relative order.
    (String:string).CompareTo<public>(Value:string):int=
        var result:int = 0
        for(Index->Char : String):
            if(Char = Value):
                set result = 0
                return result
            else:
                set result = 1
        return result

    # Checks if two strings are equal.
    (String:string).Equals<public>(Value:string)<transacts><decides>:void=
        var result:logic = false
        for(Index->Char : String):
            if(Char = Value):
                set result = true
                result
            else:
                result
        result
    
    # Converts a string to an integer.
    (String:string).ToInt<public>():int=
        var result:int = 0
        for(Index->Char : String):
            if:
                Char = '0'
                set result = result * 10 + 0
            else if:
                Char = '1'
                set result = result * 10 + 1
            else if:
                Char = '2'
                set result = result * 10 + 2
            else if:
                Char = '3'
                set result = result * 10 + 3
            else if:
                Char = '4'
                set result = result * 10 + 4
            else if:
                Char = '5'
                set result = result * 10 + 5
            else if:
                Char = '6'
                set result = result * 10 + 6
            else if:
                Char = '7'
                set result = result * 10 + 7
            else if:
                Char = '8'
                set result = result * 10 + 8
            else if:
                Char = '9'
                set result = result * 10 + 9
        return result