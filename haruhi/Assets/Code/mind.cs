using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class mind : MonoBehaviour
{
    public static mind instance;

    private void Awake()
    {
        instance = this;
    }

    private void Start()
    {
        
    }
}
