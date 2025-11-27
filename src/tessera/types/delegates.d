module tessera.types.delegates;
import tessera.types;

struct SizeGetter {
	Pixel delegate(Dimension2!Pixel widgetSize) fn;

	this(Pixel pixelValue) {
		fn = (Dimension2!Pixel) => pixelValue;
	}

	alias fn this;  // Allows calling the delegate directly
}
