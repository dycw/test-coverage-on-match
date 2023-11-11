from typing import Literal

from pytest import mark
from test_coverage_on_match import map_abc


@mark.parametrize("x", ["a", "b", "c"])
def test_map_abc(x: Literal["a", "b", "c"]) -> None:
    assert map_abc(x) == x  # noqa: S101
