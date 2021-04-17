<#import "../parts/common.ftl" as c/>
<#import "../parts/navs.ftl" as navs/>
<#import "../parts/editClient.ftl" as editClient/>
<@c.page>
<@navs.navs></@navs.navs>
    <h1 class="display-6 text-center">Client info</h1>
<#--  FIND AS NAME   TODO-->
    <div class="findClientId">
        <form method="get" action="/bank/clientinfo/id">
            <div class="input-group mb-3">
                <input type="number" name="id" class="form-control" placeholder="Entry id" aria-label="Entry id" aria-describedby="button-addon2">
                <button class="btn btn-outline-secondary " type="submit" id="button-addon2">Entry id</button>
            </div>
        </form>
    </div>

    <@editClient.editclient "/bank/clientinfo/addClient"></@editClient.editclient>

    <#if clientId??>
        <div class="getClientId">
            <table class="table table-sm table-dark table-success">
<#--                <div class="table-responsive">-->
                    <#--              <table class="table table-bordered table-success table-sm">-->
                    <table class="table table-info table-stripe">
                        <thead>
                        <tr class="font-weight-bolder">
                            <th scope="col">
                                <p class="font-weight-normal text-center">
                                    Client id
                                </p>
                            </th>
                            <th scope="col">
                                <p class="font-weight-normal text-center">
                                    Sur name client
                                </p>
                            </th>
                            <th scope="col">
                                <p class="font-weight-normal text-center">
                                    First name client
                                </p>
                            </th>
                            <th scope="col">
                                <p class="font-weight-normal text-center">
                                    Last name client
                                </p>
                            </th>
                            <th scope="col">
                                <p class="font-weight-normal text-center">
                                    Number passport client
                                </p>
                            </th>
                            <th scope="col">
                                <p class="font-weight-normal text-center">
                                    Phone number client
                                </p>
                            </th>
                            <th scope="col">
                                <p class="font-weight-normal text-center">
                                    Email client
                                </p>
                            </th>
                            <th scope="col">
                                <p class="font-weight-normal text-center">
                                    Control
                                </p>
                            </th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td class="table-info text-left font-weight-light">
                                ${clientId.id}
                            </td>
                            <td class="table-info text-left font-weight-light">
                                ${clientId.surName}
                            </td>
                            <td class="table-info text-left font-weight-light">
                                ${clientId.firstName}
                            </td>
                            <td class="table-info text-left font-weight-light">
                                ${clientId.lastName}
                            </td>
                            <td class="table-info text-left font-weight-light">
                                ${clientId.passportNumber?string.computer}
                            </td>
                            <td class="table-info text-left font-weight-light">
                                ${clientId.phoneNumber?string.computer}
                            </td>
                            <td class="table-info text-left font-weight-light">
                                ${clientId.email}
                            </td>
                            <td class="table-info text-right">
                                <#--Control-->
                            </td>
                        </tr>
                        </tbody>
<#--                </div>-->
                <#else>
    </#if>
    <table class="table table-sm table-dark table-success">
<#--    <div class="table-responsive">-->
<#--              <table class="table table-bordered table-success table-sm">-->
    <table class="table table-info table-stripe">
    <#if clientList??>
        <thead>
        <tr class="font-weight-bolder">
            <th scope="col">
                <p class="font-weight-normal text-center">
                    Client id
                </p>
            </th>
            <th scope="col">
                <p class="font-weight-normal text-center">
                    Sur name client
                </p>
            </th>
            <th scope="col">
                <p class="font-weight-normal text-center">
                    First name client
                </p>
            </th>
            <th scope="col">
                <p class="font-weight-normal text-center">
                    Last name client
                </p>
            </th>
            <th scope="col">
                <p class="font-weight-normal text-center float-md-none">
                    Number passport client
                </p>
            </th>
            <th scope="col">
                <p class="font-weight-normal text-center float-md-none">
                    Phone number client
                </p>
            </th>
            <th scope="col">
                <p class="font-weight-normal text-center">
                    Email client
                </p>
            </th>
            <th scope="col">
                <p class="font-weight-normal text-center">
                    Control
                </p>
            </th>
        </tr>
        </thead>
        <tbody>
        <#list clientList as client>
            <tr>
                <td class="table-info text-left font-weight-light">
                    ${client.id}
                </td>
                <td class="table-info text-left font-weight-light">
                    ${client.surName}
                </td>
                <td class="table-info text-left font-weight-light">
                    ${client.firstName}
                </td>
                <td class="table-info text-left font-weight-light">
                    ${client.lastName}
                </td>
                <td class="table-info text-left font-weight-light float-none">
                    ${client.passportNumber?string.computer}
                </td>
                <td class="table-info text-left font-weight-light float-none">
                    ${client.phoneNumber?string.computer}
                </td>
                <td class="table-info text-left font-weight-light">
                    ${client.email}
                </td>
                <td class="table-info text-right">
                    <#--Control-->
                </td>
            </tr>
            </tbody>
        </#list>
        </table>
<#--        </div>-->
        </table>

    <#else>
<#--        No client-->
    </#if>

</@c.page>
