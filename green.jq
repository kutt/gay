# make json readable by jq
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
