using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.InputSystem;

public class Player : MonoBehaviour
{
    public Sprite[] sprites;
    public float moveSpeed;
    public float maxVelocity;
    
    private Rigidbody2D _rigidbody;
    private SpriteRenderer _render;
    private Playercontrols _Playercontrols;

    private void Awake()
    {
        _rigidbody = GetComponent<Rigidbody2D>();
        _render = GetComponent<SpriteRenderer>();
        _Playercontrols = new Playercontrols();
    }

    private void OnEnable()
    {
        _Playercontrols.main.Enable();
    }

    private void OnDisable()
    {
        _Playercontrols.main.Disable();
    }

    private void FixedUpdate()
    {//allows movement in any direction, not just wasd
        var dir = _Playercontrols.main.WASD.ReadValue<Vector2>();
        
        _rigidbody.AddForce(dir * (moveSpeed * Time.fixedDeltaTime), ForceMode2D.Impulse);
        
        if(_rigidbody.velocity.magnitude > maxVelocity)
        {
            _rigidbody.velocity = _rigidbody.velocity.normalized * maxVelocity;
        } 
        
        switch (dir.x)
        {//change which direction the player sprite is "looking"
            case -1:
                _render.sprite = sprites[0];
                break;
            case 1:
                _render.sprite = sprites[1];
                break;
        }
    }

}
