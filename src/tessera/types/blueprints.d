module tessera.types.blueprints;
import tessera.types;

class Viewport {
	Vector2!Cell topLeft;
	Vector2!Cell bottomRight;
	Border!SizeGetter margin = new Border!SizeGetter();
	List!RenderCallback widgets = [];
	
	this(
			Vector2!Cell topLeft,
			Vector2!Cell bottomRight)
		{
		this.topLeft = topLeft;
		this.bottomRight = bottomRight;
	}

	void addWidget(RenderCallback widget) {
		widgets ~= widget;
	}
}

class Border(T) {
	T top;
	T left;
	T bottom;
	T right;

	this(
			T top,
			T left,
			T bottom,
			T right)
		{
		this.top = top;
		this.left = left;
		this.bottom = bottom;
		this.right = right;
	}

	this() {
		T zero = 0;
		top = zero;
		left = zero;
		bottom = zero;
		right = zero;
	}
}

immutable:
struct RenderingContext {
	Dimension2!Pixel viewportSize;
	GridSize gridSize;
}
