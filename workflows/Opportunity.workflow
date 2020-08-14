<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Reach_out_to_client</fullName>
        <description>Reach out to client</description>
        <protected>false</protected>
        <recipients>
            <recipient>rnebuda@clickdeploy.com.dev2</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/SalesNewCustomerEmail</template>
    </alerts>
    <fieldUpdates>
        <fullName>Update_Last_Won_Opportunity_Date</fullName>
        <field>Last_Won_Opportunity_Date__c</field>
        <formula>CloseDate</formula>
        <name>Update Last Won Opportunity Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <targetObject>AccountId</targetObject>
    </fieldUpdates>
    <rules>
        <fullName>Update Field On Won</fullName>
        <actions>
            <name>Update_Last_Won_Opportunity_Date</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>IsWon = true</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
