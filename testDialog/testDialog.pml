<?xml version="1.0" encoding="UTF-8" ?>
<Package name="testDialog" format_version="4">
    <Manifest src="manifest.xml" />
    <BehaviorDescriptions>
        <BehaviorDescription name="behavior" src="behavior_1" xar="behavior.xar" />
    </BehaviorDescriptions>
    <Dialogs>
        <Dialog name="ExampleDialog" src="behavior_1/ExampleDialog/ExampleDialog.dlg" />
        <Dialog name="dialogMeeting" src="dialogMeeting/dialogMeeting.dlg" />
        <Dialog name="dialogMeetingSuite" src="dialogMeetingSuite/dialogMeetingSuite.dlg" />
    </Dialogs>
    <Resources>
        <File name="heaven1" src="behavior_1/behavior_1/heaven1.ogg" />
        <File name="golf" src="behavior_1/golf.ogg" />
    </Resources>
    <Topics>
        <Topic name="ExampleDialog_frf" src="behavior_1/ExampleDialog/ExampleDialog_frf.top" topicName="" language="" />
        <Topic name="dialogMeeting_frf" src="dialogMeeting/dialogMeeting_frf.top" topicName="dialogMeeting" language="fr_FR" />
        <Topic name="dialogMeetingSuite_frf" src="dialogMeetingSuite/dialogMeetingSuite_frf.top" topicName="dialogMeetingSuite" language="fr_FR" />
    </Topics>
    <IgnoredPaths>
        <Path src="dialogMeetingSuite" />
        <Path src="behavior_1/ExampleDialog" />
        <Path src="behavior_1/behavior_1" />
        <Path src="behavior_1" />
        <Path src=".metadata" />
        <Path src="dialogMeeting" />
    </IgnoredPaths>
</Package>
