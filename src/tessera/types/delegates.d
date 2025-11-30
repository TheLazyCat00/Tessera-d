module tessera.types.delegates;
import tessera.types;

immutable:
struct SizeGetter {
	Pixel delegate(Dimension2!Pixel widgetSize) fn;

	this(Pixel pixelValue) {
		fn = (Dimension2!Pixel) => pixelValue;
	}

	this(Fraction fraction) {
		fn = (Dimension2!Pixel dimensions) => cast(Pixel)(dimensions.y * fraction);
	}

	alias fn this;
}

alias RenderCallback = PixelSurface delegate(Dimension2!Pixel dimensions);
