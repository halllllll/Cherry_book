def to_hex(r, g, b)
    [r, g, b].inject('#'){|result, c|result+c.to_s(16).rjust(2, '0')}
end

def to_ints(hex)
    r, g, b = hex.scan(/\w\w/)
    [r, g, b].map(&:hex)
end