using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SingleUseInk : MonoBehaviour
{
    public TextAsset inkAsset;
    public bool used; //this makes sure it can only go off once

    private void Awake()
    {
        used = false;
        mind.timeloop += resetStatus;
    }

    private void OnTriggerEnter2D(Collider2D col)
    {
        if (col.GetComponent<Player>())
        {//case where player collided with it
            if (!used)
            {
                InkHandler.instance.StartTalk(inkAsset);
                used = true;
            }
        }
    }

    private void resetStatus()
    {
        used = false;
    }
    
    
}
