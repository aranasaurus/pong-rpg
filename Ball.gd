extends RigidBody2D

export var velocity: = Vector2(200, -200)
func _ready() -> void:
	randomize()
#	velocity = Vector2(rand_range(100, 200), rand_range(100, 200))
	if rand_range(0, 1) > 0.5:
		velocity.y *= -1
	if rand_range(0, 1) > 0.5:
		velocity.x *= -1
	apply_central_impulse(velocity)
