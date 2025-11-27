import std.stdio;
import core = tessera.core;
import tessera.types;

void main(){
	Pixel foo = 1;
	SizeGetter boo = foo;
	write(boo(Dimension2!Pixel(0,0)));
}
