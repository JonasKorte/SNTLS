def split(source)
    for line in source.split("\n")
        tok = ""
        for ch in line.split(//)
            tok += ch
        end
    end
end