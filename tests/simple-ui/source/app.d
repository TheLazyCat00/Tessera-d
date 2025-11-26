import std.stdio;
import core = tessera.core;
import tessera.types;

void main(){
	auto foo = Vector2!int(3, 1);
	// foo.data[Axis2.X] = 2;
	// auto y = types.Vector2!int(3, 1);
	write(foo.getAxis(Axis2.X));
}
