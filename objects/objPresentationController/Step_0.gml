// Don't progress if dialogue is active
if (instance_exists(objDialogue)) exit;

if (!isReady) exit;
    
if (isReady) visible = true;

switch(presentationState) {
    case -1: // Just activated - move to intro
        presentationState = 0;
        break;
    
    case 0: // Intro
        createDialogue(global.presentationIntro, [], 0);
        presentationState = 1;
        break;
        
    case 1: // Slide 1 - Cafe
        if (slide1Choice == "") {
            // Show choices
            image_index = 1;
            createDialogue(
                global.presentationSlide1,
                [
                    {
                        text: "Detailed explanation",
                        dialogue: global.slide1Detailed,
                        cost: 25,
                        action: function() {
                            objPresentationController.slide1Choice = "detailed";
                        }
                    },
                    {
                        text: "Brief summary",
                        dialogue: global.slide1Brief,
                        cost: 15,
                        action: function() {
                            objPresentationController.slide1Choice = "brief";
                        }
                    },
                    {
                        text: "Skip quickly",
                        dialogue: global.slide1Skip,
                        cost: 8,
                        action: function() {
                            objPresentationController.slide1Choice = "skip";
                        }
                    }
                ],
                0
            );
        } else {
            // Choice was made, move to next slide
            presentationState = 2;
            image_index = 2;
        }
        break;
        
    case 2: // Slide 2 - House Party
        if (slide2Choice == "") {
            // Different intro based on previous choice
            var slide2Intro;
            
            if (slide1Choice == "detailed") {
                slide2Intro = global.slide2AfterDetailed;
            } else if (slide1Choice == "skip") {
                slide2Intro = global.slide2AfterSkip;
            } else {
                slide2Intro = global.slide2AfterBrief;
            }
                
            createDialogue(
                slide2Intro,
                [
                    {
                        text: "Detailed party explanation",
                        dialogue: global.slide2PartyDetailed,
                        cost: 25,
                        action: function() {
                            objPresentationController.slide2Choice = "detailed";
                        }
                    },
                    {
                        text: "Brief party summary",
                        dialogue: global.slide2PartyBrief,
                        cost: 15,
                        action: function() {
                            objPresentationController.slide2Choice = "brief";
                        }
                    },
                    {
                        text: "Skip this slide",
                        dialogue: global.slide2PartySkip,
                        cost: 8,
                        action: function() {
                            objPresentationController.slide2Choice = "skip";
                        }
                    }
                ],
                0
            );
        } else {
            presentationState = 3;
        }
        break;
        
    case 3: // Slide 3 - Meta (This Presentation)
        if (slide3Choice == "") {
            image_index = 3;
            createDialogue(
                global.slide3Intro,
                [
                    {
                        text: "Explain presentation anxiety in depth",
                        dialogue: global.slide3Meta,
                        cost: 30,
                        action: function() {
                            objPresentationController.slide3Choice = "detailed";
                        }
                    },
                    {
                        text: "Brief mention of presentation difficulty",
                        dialogue: global.slide3MetaBrief,
                        cost: 18,
                        action: function() {
                            objPresentationController.slide3Choice = "brief";
                        }
                    },
                    {
                        text: "Rush through this part",
                        dialogue: global.slide3MetaSkip,
                        cost: 10,
                        action: function() {
                            objPresentationController.slide3Choice = "skip";
                        }
                    }
                ],
                0
            );
        } else {
            presentationState = 4;
            image_index = 4;
        }
        break;
        
    case 4: // Conclusion
        createDialogue(global.presentationConclusion, [], 0);
        presentationState = 5; // Move to final state
        break;
        
    case 5: // Complete
        completeQuest("frankVictory");
        instance_destroy(); // Quest complete
        break;
}