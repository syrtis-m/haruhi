using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;


public class mind : MonoBehaviour
{
    public static mind instance;
    public Dictionary<string, bool> storyVars; //value = storyvars[key];

    private void Awake()
    {
        instance = this;
        storyVars = new Dictionary<string, bool>();
    }

    public void setStoryVar(string key, bool value)
    {
        Debug.Log("setStoryVar()");
        if (storyVars.ContainsKey(key))
        {
            Debug.Log("story var " + key + " already exists as " + value);
            storyVars[key] = value;
        }
        storyVars.Add(key,value);
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
