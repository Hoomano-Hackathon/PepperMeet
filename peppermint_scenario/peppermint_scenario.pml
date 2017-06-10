<?xml version="1.0" encoding="UTF-8" ?>
<Package name="peppermint_scenario" format_version="4">
    <Manifest src="manifest.xml" />
    <BehaviorDescriptions>
        <BehaviorDescription name="behavior" src="behavior_1" xar="behavior.xar" />
    </BehaviorDescriptions>
    <Dialogs>
        <Dialog name="dialogueContact" src="dialogueContact/dialogueContact.dlg" />
        <Dialog name="ExampleDialog" src="behavior_1/ExampleDialog/ExampleDialog.dlg" />
        <Dialog name="dialogueTete" src="dialogueTete/dialogueTete.dlg" />
        <Dialog name="dialogueQuestions1" src="dialogueQuestions1/dialogueQuestions1.dlg" />
        <Dialog name="dialogueQuestions2" src="dialogueQuestions2/dialogueQuestions2.dlg" />
    </Dialogs>
    <Resources>
        <File name="index" src="html/index.html" />
        <File name="bootstrap.min" src="html/css/bootstrap.min.css" />
        <File name="quizz-form" src="html/css/quizz-form.css" />
        <File name="tether.min" src="html/css/tether.min.css" />
        <File name="angular.min" src="html/js/angular.min.js" />
        <File name="bootstrap.min" src="html/js/bootstrap.min.js" />
        <File name="jquery-3.2.1.min" src="html/js/jquery-3.2.1.min.js" />
        <File name="script" src="html/js/script.js" />
        <File name="tether.min" src="html/js/tether.min.js" />
    </Resources>
    <Topics>
        <Topic name="dialogueContact_frf" src="dialogueContact/dialogueContact_frf.top" topicName="dialogueContact" language="fr_FR" />
        <Topic name="ExampleDialog_frf" src="behavior_1/ExampleDialog/ExampleDialog_frf.top" topicName="ExampleDialog" language="fr_FR" />
        <Topic name="dialogueTete_frf" src="dialogueTete/dialogueTete_frf.top" topicName="dialogueTete" language="fr_FR" />
        <Topic name="dialogueQuestions1_frf" src="dialogueQuestions1/dialogueQuestions1_frf.top" topicName="dialogueQuestions1" language="fr_FR" />
        <Topic name="dialogueQuestions2_frf" src="dialogueQuestions2/dialogueQuestions2_frf.top" topicName="dialogueQuestions2" language="fr_FR" />
    </Topics>
    <IgnoredPaths>
        <Path src=".metadata" />
    </IgnoredPaths>
</Package>
