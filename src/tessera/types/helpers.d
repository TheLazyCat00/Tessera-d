module tessera.types.helpers;

/// 2d data container without arithmetic
class Grid2(T) {
	private T[Axis2] data;
	@property T x(T setValue) {
		data[Axis2.X] = setValue;
		return data[Axis2.X];
	}

	@property T y(T setValue) {
		data[Axis2.Y] = setValue;
		return data[Axis2.Y];
	}

	this(T x, T y) {
		data = [
			Axis2.X: x,
			Axis2.Y: y,
		];
	}

	T getAxis(Axis2 axis2) {
		return data[axis2];
	}
}

immutable:
private Axis2[Axis2] opposites = [
	Axis2.X: Axis2.Y,
	Axis2.Y: Axis2.X,
];

struct Axis2 {
	private int id;

	Axis2 getOpposite(){
		return opposites[this];
	}

	static immutable X = Axis2(0);
	static immutable Y = Axis2(1);
}

struct Vector2(T) {
	private T[Axis2] data;
	@property T x() => data[Axis2.X];
	@property T y() => data[Axis2.Y];

	this(T x, T y) {
		data = [
			Axis2.X: x,
			Axis2.Y: y,
		];
	}

	Vector2!T opBinary(string op)(Vector2!T other) {
		static if (op == "+") return Vector2!T(x + other.x, y + other.y);
		else static if (op == "-") return Vector2!T(x - other.x, y - other.y);
		else static if (op == "*") return Vector2!T(x * other.x, y * other.y);
		else static if (op == "/") return Vector2!T(x / other.x, y / other.y);
		else static assert(false, "Unsupported operator: " ~ op);
	}

	T getAxis(Axis2 axis2) {
		return data[axis2];
	}
}
