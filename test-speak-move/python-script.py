class MyClass(GeneratedClass):
    def __init__(self):
        GeneratedClass.__init__(self)

    def onLoad(self):
        #put initialization code here
        
        self.tts = self.session().service("ALTextToSpeech") # objet proxy créé
        self.nav = self.session().service("ALNavigation") # objet proxy créé
        self.mot = self.session().service("ALMotion") # objet proxy créé
        
        pass

    def onUnload(self):
        #put clean-up code here
        pass

    def onInput_onStart(self):
        #self.onStopped() activate the output of the box
        
        self.tts.say("Go")
        self.mot.moveTo(0.5,0.0,0.0)
        
        pass

    def onInput_onStop(self):
        self.onUnload() #it is recommended to reuse the clean-up as the box is stopped
        self.onStopped() #activate the output of the box
