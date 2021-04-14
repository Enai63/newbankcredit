<#import "../parts/common.ftl" as c/>
    <#import "../parts/editClient.ftl" as ed/>
<@c.page>
    <h2>Client cards</h2>
    <@ed.clientEdit "/bank/clientinfo/addClient"/>
</@c.page>