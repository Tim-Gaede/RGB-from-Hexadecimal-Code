#-------------------------------------------------------------------------------
function RGB_from(hex_code::String)
    if length(hex_code) ≠ 6
        msg = "The length of hex_code passed to RGB_from was " *
              string(length(hex_code)) * " instead of 6."

        throw(msg)
    end

    val = Dict('0'=> 0,  '1'=> 1,  '2'=> 2,  '3'=> 3,
               '4'=> 4,  '5'=> 5,  '6'=> 6,  '7'=> 7,
               '8'=> 8,  '9'=> 9,  'A'=>10,  'B'=>11,
               'C'=>12,  'D'=>13,  'E'=>14,  'F'=>15)


    res = Int[]

    for c = 1 : 3
        push!(res, 16val[hex_code[2c-1]] + val[hex_code[2c]])
    end

    res # returned
end
#-------------------------------------------------------------------------------


#-------------------------------------------------------------------------------
function main()
    println(RGB_from("CD8C95"))
end
#-------------------------------------------------------------------------------
main()
