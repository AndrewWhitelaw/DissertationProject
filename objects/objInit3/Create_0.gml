//Check if already initialized
if (variable_global_exists("systemInitialized3")) {
    instance_destroy();
    exit;
}

//Mark as initialized
global.systemInitialized = true;

// Initialize quest system
global.quests = {
   presentationBegin: false, 
   frankVictory: false,
}

global.questComplete = {
   presentationBegin: false, 
   frankVictory: false,
}

//Initialize all global dialogues colours
   global.charColours = {
       "Frank": c_olive,
}

// === INTRO DIALOGUES ===

global.frankIntro3 = [
    {name: "Frank", msg: "Welcome to the third and final level! There is only one quest for you to complete today."},
    {name: "Frank", msg: "A presentation in front of everyone!"},
    {name: "Frank", msg: "Let's do a topic about something we've been learning about recently, social anxiety."},
    {name: "Frank", msg: "When you're ready, step up to the podium."},
]

global.frankVictorySpeech = [
    {name: "Frank", msg: "Congratulations! You've completed all three levels and conquered the presentation."},
    {name: "Frank", msg: "You've experienced what it's like to navigate the world with social anxiety, and you've succeeded."},
    {name: "Frank", msg: "Thank you for playing!"},
]

// === PRESENTATION START ===

global.presentationIntro = [
    {name: "Frank", msg: "Good morning everyone. Today I'll be presenting about social anxiety and real scenarios where it affects daily life."},
    {name: "Frank", msg: "My name is Frank, and I've been studying how social anxiety impacts simple conversations and everyday tasks."},
    {name: "Frank", msg: "I'll share three scenarios that demonstrate different types of social challenges."},
    {name: "Frank", msg: "Behind me are slides demonstrating what scenario I am talking about."},
]

// === SLIDE 1: THE CAFE (Level 1) ===

global.presentationSlide1 = [
    {name: "Frank", msg: "The first scenario took place in a cafe, with three distinct social challenges."},
]

// Slide 1 Choices - How to explain the cafe scenarios
global.slide1Detailed = [
    {name: "Frank", msg: "Alex asked me to get him a coffee. While this seems like a simple favor, it forces an unwanted interaction."},
    {name: "Frank", msg: "People with social anxiety fear being judged during these interactions. What if I order wrong? What if the barista thinks I'm annoying?"},
    {name: "Frank", msg: "Adam's cold food required confrontation, speaking up about a problem. This feels like 'making a scene' and drawing negative attention."},
    {name: "Frank", msg: "Amelia needed help asking staff a question. Even simple queries to authority figures feel like bothering someone important."},
]

global.slide1Brief = [
    {name: "Frank", msg: "Alex needed coffee, which meant extra conversations. Adam's complaint required confrontation. Amelia's question meant approaching staff."},
    {name: "Frank", msg: "Each task involved risk: judgment, conflict, or seeming like a burden. That's exhausting for someone with social anxiety."},
]

global.slide1Skip = [
    {name: "Frank", msg: "So... the cafe had some interactions. People asked for help. It was stressful."},
]

// === SLIDE 2: THE HOUSE PARTY (Level 2) ===

// Transitions based on Slide 1 choice
global.slide2AfterDetailed = [
    {name: "Frank", msg: "Building on those one-on-one cafe interactions, the second scenario escalated the challenge, a house party."},
]

global.slide2AfterBrief = [
    {name: "Frank", msg: "The cafe was challenging, but the second scenario, a house party, raised the stakes even higher."},
]

global.slide2AfterSkip = [
    {name: "Frank", msg: "Um... so after the cafe, there was a party..."},
]

// Slide 2 Choices - How to explain party scenarios
global.slide2PartyDetailed = [
    {name: "Frank", msg: "At the party, Alex introduced me to a group of friends. Suddenly I was the center of attention for multiple people at once."},
    {name: "Frank", msg: "Every word felt scrutinized. 'Am I talking too much? Too little? Do I sound boring? Am I making eye contact correctly?'"},
    {name: "Frank", msg: "Getting Amelia's drink meant walking near a group. Even though they weren't talking to me, their presence alone created pressure."},
    {name: "Frank", msg: "Just existing near people drains your energy. You're hyper aware of being perceived, even when invisible."},
    {name: "Frank", msg: "Bob gave me a compliment about my outfit. Positive attention should feel good, but it doesn't."},
    {name: "Frank", msg: "Accepting it gracefully feels arrogant. Deflecting it feels rude. Either way, you're performing 'correctly' and it costs energy."},
]

global.slide2PartyBrief = [
    {name: "Frank", msg: "The party had three challenges: meeting Alex's friends meant being the spotlight. Walking near groups drained energy even without interaction."},
    {name: "Frank", msg: "Bob's compliment created an impossible choice, accept and seem vain, or deflect and seem insecure."},
    {name: "Frank", msg: "Parties are overwhelming because every interaction is unpredictable and unscripted."},
]

global.slide2PartySkip = [
    {name: "Frank", msg: "At the party I met people, got a drink, and someone said something nice. It was... hard."},
]

// === SLIDE 3: THE CLASSROOM (Level 3 - Meta) ===

global.slide3Intro = [
    {name: "Frank", msg: "And now, the third scenario, which is happening right now."},
]

// Slide 3 Choices - Explaining THIS presentation
global.slide3Meta = [
    {name: "Frank", msg: "This presentation itself is the final test. Public speaking is the number one fear for people with social anxiety."},
    {name: "Frank", msg: "Standing here, I'm being judged by all of you. I can see your faces. I hear every small sound."},
    {name: "Frank", msg: "Did someone just yawn? Are they bored? Did I stumble over that word? How much time is left?"},
    {name: "Frank", msg: "This is what social anxiety feels like amplified - sustained, inescapable attention with no hiding."},
]

global.slide3MetaBrief = [
    {name: "Frank", msg: "This presentation is the hardest challenge. Unlike the cafe or party, I can't escape or blend in."},
    {name: "Frank", msg: "Every eye is on me. Every word is judged. That's the reality of social anxiety in performance situations."},
]

global.slide3MetaSkip = [
    {name: "Frank", msg: "And... yeah. Presentations are scary. That's kind of it."},
]

// === CONCLUSION ===

global.presentationConclusion = [
    {name: "Frank", msg: "In conclusion, social anxiety isn't just shyness. It's a constant battle between wanting to connect and fearing judgment."},
    {name: "Frank", msg: "Simple tasks become exhausting. Every interaction has a cost. But with understanding and practice, it can be managed."},
    {name: "Frank", msg: "Thank you for listening."},
]

//Destroy after initialization
instance_destroy();