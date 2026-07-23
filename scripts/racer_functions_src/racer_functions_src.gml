/// @function                     apply_racer_slowdown(_racer, _slow_amount, _obstacle_instance);
/// @param {Struct/Id} _racer     The racer taking the hit
/// @param {Real} _slow_amount    How much speed to deduct
/// @param {Id} _obstacle        The asteroid instance to destroy

function apply_racer_slowdown(_racer, _slow_amount, _obstacle) {
    // Reduce speed with a minimum floor limit
    _racer.move_speed = max(_racer.move_speed - _slow_amount, 1);
    
    // Destroy the obstacle on impact
    if (instance_exists(_obstacle)) {
        instance_destroy(_obstacle);
    }
}