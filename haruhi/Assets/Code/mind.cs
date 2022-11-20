using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;


public class mind : MonoBehaviour
{
    public static mind instance;
    
    public Dictionary<string, bool> storyVars; //value = storyvars[key];
    //dictionaries can't be viewed

    public GameObject player;
    private Vector3 _playerStart;
    
    public static event Action timeloop;

    public void invokeTimeloop()
    {
        timeloop?.Invoke();
    }

    private void Awake()
    {
        instance = this;
        storyVars = new Dictionary<string, bool>();
        timeloop += resetWorld;
    }

    private void Start()
    {
        _playerStart = player.transform.position;
    }

    private void resetWorld()
    {// called when timeloop?.Invoke() is called
        Debug.Log("resetWorld()");
        //set screen to black
        player.transform.position = _playerStart;
        var component = player.GetComponent<Rigidbody2D>();
        component.velocity = Vector2.zero;
        component.angularVelocity = 0f;
        //set screen to normal

    }

    public void setStoryVar(string key, bool value)
    {
        Debug.Log("setStoryVar()");
        if (storyVars.ContainsKey(key))
        {
            Debug.Log("story var " + key + " already exists as " + value);
            storyVars[key] = value;
        }
        else
        {
            storyVars.Add(key,value);
        }
        Debug.Log("story var " + key + " added as " + value);
    }

    public bool getStoryVar(string key)
    {//returns false if the story var doesn't exist
        if (storyVars.ContainsKey(key))
        {
            return storyVars[key];
        }
        else
        {
            return false;
        }
    }
    
}
