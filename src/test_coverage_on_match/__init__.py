from typing import Literal


def map_abc(x: Literal["a", "b", "c"]) -> Literal["a", "b", "c"]:
    match x:
        case "a":
            return "a"
        case "b":
            return "b"
        case "c":
            return "c"
