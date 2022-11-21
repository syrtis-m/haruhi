using System;
using System.Collections;
using UnityEngine;
using Ink.Runtime;
using TMPro;


public class InkHandler : MonoBehaviour
{
    public static InkHandler instance;

    public TextAsset inkAsset;

    // The ink story that we're wrapping
    private Story _inkStory;
    
    private TMP_Text _textOutput;
    private bool _continueFlag;

    private void Awake()
    {
        instance = this;
        //set up the story
        _inkStory = new Story(inkAsset.text);
    }

    private void Start()
    {
        _textOutput = UIHandler.instance.getTextPaneText();
        
        //configure the story
        configStory();
    }

    private void configStory()
    {
        //error handling
        _inkStory.onError += (msg, type) => {
            if( type == Ink.ErrorType.Warning )
                Debug.LogWarning(msg);
            else
                Debug.LogError(msg);
        };
        
        //external functions for getting and setting story variables
        _inkStory.BindExternalFunction("setStoryVar", (string key, bool value) => mind.instance.setStoryVar(key,value));
        
        _inkStory.BindExternalFunction("getStoryVar", (string key) => mind.instance.getStoryVar(key));
        
        _inkStory.BindExternalFunction("timeloop", () => mind.instance.invokeTimeloop());
        
        _inkStory.BindExternalFunction("endGame", () => UIHandler.instance.endGame());

        //get story vars in ink by calling 
    }

    public void StartTalk(string knot)
    {//start ink at a certain knot
        
        //set the continueFlag for the coroutine
        _continueFlag = false;
        
        //pause the game and start the coroutine
        Time.timeScale = 0f;
        UIHandler.instance.showTextPane(this);
        _inkStory.ChoosePathString(knot);
        StartCoroutine(Talk());
    }
    
    public void Continue()
    {//ui "continue" button uses this
        _continueFlag = true;
    }
    
    public void Choice(int choice)
    {//ui choice buttons use this
        Debug.Log("Choice() Started");
        UIHandler.instance.hideChoices();
        _inkStory.ChooseChoiceIndex(choice);
        if (_inkStory.canContinue)
        {
            StartCoroutine(Talk());
        }
    }

    private IEnumerator Talk()
    {//this handles dialog, until there's a choice or dialog ends.
        Debug.Log("Talk() Started");
        UIHandler.instance.continueButton.SetActive(true);
        // talk
        while (_inkStory.canContinue)
        {
            var line = _inkStory.Continue();
            if (line != "")
            {
                _textOutput.text = line;
                //Debug.Log(line);
            
                yield return new WaitUntil(() => _continueFlag);
            }
            _continueFlag = false;
        }
        
        //choices
        if( _inkStory.currentChoices.Count > 0 )
        {
            var line = "";
            var choiceCount = _inkStory.currentChoices.Count;
            for (int i = 0; i < choiceCount; ++i) {
                Choice choice = _inkStory.currentChoices [i];
                GameObject button = UIHandler.instance.choices[i];
                button.SetActive(true);
                button.GetComponentInChildren<TMP_Text>().text = (i + 1) + ": " + choice.text + "<br>";
                //line += (i + 1) + ": " + choice.text + "<br>";
                //Debug.Log(line);
            }

            _textOutput.text = line;
            UIHandler.instance.continueButton.SetActive(false);
            
            yield return null;
        }
        else
        {
            Time.timeScale = 1.0f;
            UIHandler.instance.hideTextPane();
            Debug.Log("Talk() finished");
            yield return null;
        } 
    }

    
    
}
