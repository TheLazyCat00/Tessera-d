import std.stdio;
import core = tessera.core;
import tessera.types;

void main(){
	Fraction foo = 0.1;
	SizeGetter boo = foo;
	write(boo(Dimension2!Pixel(10, 100)));
}
