module tessera.types.interfaces;
import tessera.types;

interface PixelSurface{
	Pixel getWidth();
	Pixel getHeight();
	const(ubyte)[] getPixels();
}
