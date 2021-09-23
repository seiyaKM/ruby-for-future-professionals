UNIT = { m: 1.0, ft: 3.28, in: 39.37 }
def convert_length(length, from: unit_from, to: unit_to)
    (length / UNIT[from] * UNIT[to]).round(2)
end