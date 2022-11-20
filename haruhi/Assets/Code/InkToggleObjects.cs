using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class InkToggleObjects : MonoBehaviour
{
    //this should act like collideToInk but it also allows you to toggle a list of objects off and a list of objects on.
    
    public TextAsset inkAsset;
    
    public string toggleStoryVar_Key;
    
    public List<GameObject> starts_on;
    public List<GameObject> starts_off;
    public Sprite sprite_starts_on;
    public Sprite sprite_starts_off;
    
    private bool _toggleStoryVar_Value;
    private SpriteRenderer _SpriteRenderer;
    
    private void Awake()
    {//ensures all the gameobjects are in their proper state
        _SpriteRenderer = GetComponent<SpriteRenderer>();
        _SpriteRenderer.sprite = sprite_starts_on;
        _toggleStoryVar_Value = false;
        for (var index = 0; index < starts_on.Count; index++)
        {
            var t = starts_on[index];
            t.SetActive(true);
        }

        for (int i = 0; i < starts_off.Count; i++)
        {
            starts_off[i].SetActive(false);
        }
    }

    private void OnTriggerEnter2D(Collider2D col)
    {
        if (col.GetComponent<Player>())
        {//case where player collided with it
            InkHandler.instance.StartTalk(inkAsset);
        }
    }

    private void Update()
    {
        _toggleStoryVar_Value = mind.instance.getStoryVar(toggleStoryVar_Key);
        if (_toggleStoryVar_Value)
        {
            //toggle it
            _SpriteRenderer.sprite = sprite_starts_off;
            
            for (var index = 0; index < starts_on.Count; index++)
            {
                var t = starts_on[index];
                t.SetActive(false);
            }

            for (int i = 0; i < starts_off.Count; i++)
            {
                starts_off[i].SetActive(true);
            }
        }
    }

}
