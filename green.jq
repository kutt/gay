[
    paths | 
    .[1:] |
    map(select(type == "string") //  "[]") |
    "." + join("|.") |
    tostring 
] |
unique |
sort |
.[]
