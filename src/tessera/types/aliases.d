module tessera.types.aliases;
import tessera.types;

alias List(T) = T[];
alias Pixel = int;
alias Cell = int;
alias Fraction = float;
alias FlexWeight = int;
alias Dimension2 = Vector2;
alias GridSize = Grid2!(List!SizeGetter);
