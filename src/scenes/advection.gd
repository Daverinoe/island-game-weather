tool
extends TextureRect

func _process(delta: float) -> void:
	self.material.set_shader_param("dt", delta)
