import std.stdio;
import core = tessera.core;
import tessera.types;

void main() {
	auto b = new Viewport(1, 2);
	write(b.topLeft);
}
