module tessera.types.blueprints;
import tessera.types;

class Viewport {
	Vector2!Cell topLeft;
	Vector2!Cell bottomRight;
	List!RenderCallback widgets = [];
	Border!SizeGetter margin = new Border(0, 0, 0, 0);
	
	this(
			Vector2!Cell topLeft,
			Vector2!Cell bottomRight)
		{
		this.topLeft = topLeft;
		this.bottomRight = bottomRight;
	}
}


immutable:
struct RenderingContext {
	Dimension2!Pixel viewportSize;
	GridSize gridSize;
}

struct Border(T) {
	T top;
	T left;
	T bottom;
	T right;
}
