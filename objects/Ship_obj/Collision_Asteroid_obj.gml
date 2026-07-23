// Reduce speed with a minimum floor limit
    velocity = max(_racer.velocity - slow_amount, 1);
    
    // Destroy the obstacle on impact
    if (instance_exists(other)) {
        instance_destroy(other);
    }