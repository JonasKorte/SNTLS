require_relative 'Token'

def split(source)
    tokens = []
    num_tokens = {}
    ident = false
    for line in source.split("\n")
        tok = ""
        for ch in line.split(//)
            if ident
                ident = false
                if ch == " "
                    if !num_tokens[tok]
                        num_tokens[tok] = 0
                    end
                    token = Token.new(num_tokens[tok], "identifier", tok)
                    tokens += token
                    num_tokens[tok] += 1
                end
            end

            tok += ch
            if ch == " "
                if !num_tokens["space"]
                    num_tokens["space"] = 0
                end
                token = Token.new(num_tokens["space"], "space", "")
                tokens += token
                num_tokens["space"] += 1
                

                tok = ""
            end
            if ch == "\n"
                if !num_tokens["newline"]
                    num_tokens["newline"] = 0
                end
                token = Token.new(num_tokens["newline"], "newline", "")
                tokens += token
                num_tokens["newline"] += 1
                tok = ""
            end
            if ch == "@"
                if !num_tokens["at"]
                    num_tokens["at"] = 0
                end
                token = Token.new(num_tokens["at"], "operator", "@")
                tokens += token
                num_tokens["at"] += 1
                tok = ""
            end
        end
    end
    return tokens
end