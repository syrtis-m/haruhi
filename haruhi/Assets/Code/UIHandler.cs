using System;
using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;

public class UIHandler : MonoBehaviour
{
    public static UIHandler instance;
    public GameObject textPane;
    public GameObject continueButton;
    public GameObject choices;
    private TMP_Text _text;

    private InkHandler _currentStory;

    private void Awake()
    {
        instance = this;
        _text = textPane.GetComponentInChildren<TMP_Text>();
    }

    public TMP_Text getTextPaneText()
    {
        return _text;
    }

    public void showTextPane(InkHandler inkHandler)
    {
        _currentStory = inkHandler;
        textPane.SetActive(true);
    }

    public void hideTextPane()
    {
        
        choices.SetActive(true);
        textPane.SetActive(false);
    }

    public void ContinueStory()
    {
        _currentStory.Continue();
    }

    public void StoryChoice(int choice)
    {
        _currentStory.Choice(choice);
    }
    
}
