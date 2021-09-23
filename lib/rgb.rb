def to_hex(r, g, b)
    # '#' +
    #     r.to_s(16).rjust(2, '0') +
    #     g.to_s(16).rjust(2, '0') +
    #     b.to_s(16).rjust(2, '0')

    # refactor 1
    # hex = '#'
    # [r, g, b].each do |n|
    #     hex += n.to_s(16).rjust(2, '0')
    # end
    # hex

    #refactor 2
    [r,g,b].inject('#') do |hex, n|
        hex + n.to_s(16).rjust(2, '0')
    end
end

def to_ints(hex)
    # r = hex[1..2]
    # g = hex[3..4]
    # b = hex[5..6]
    # ints = []
    # [r, g, b].each do |n|
    #     ints << n.hex
    # end
    # ints

    #refactor 1
    # r = hex[1..2]
    # g = hex[3..4]
    # b = hex[5..6]
    # [r, g, b].map do |n|
    #     n.hex
    # end

    # refactor 2
    r, g, b = hex[1..2], hex[3..4], hex[5..6]
    [r, g, b].map do |n|
        n.hex
    end
end