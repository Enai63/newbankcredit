<#import '../parts/common.ftl' as c>
<@c.page>
    <h1 class="display-6 text-center">Client info</h1>

    <div class="findClientId">
    <form method="get" action="/bank/clientinfo/id">
        <div class="input-group mb-3">
            <input type="number" name="id" class="form-control" placeholder="Entry id" aria-label="Entry id" aria-describedby="button-addon2">
            <button class="btn btn-outline-secondary" type="submit" id="button-addon2">Entry id</button>
        </div>
    </form>
    </div>

    <#if clientId??>
        <div class="getClientId">
            <table class="table table-sm table-dark table-success">
                <div class="table-responsive">
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
                                ${clientId.passportNumber}
                            </td>
                            <td class="table-info text-left font-weight-light">
                                ${clientId.phoneNumber}
                            </td>
                            <td class="table-info text-left font-weight-light">
                                ${clientId.email}
                            </td>
                            <td class="table-info text-right">
                                <#--Control-->
                            </td>
                        </tr>
                        </tbody>
        </div>
                <#else>
    </#if>


    <table class="table table-sm table-dark table-success">
    <div class="table-responsive">
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
                <td class="table-info text-left font-weight-light">
                    ${client.passportNumber}
                </td>
                <td class="table-info text-left font-weight-light">
                    ${client.phoneNumber}
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
        </div>
        </table>
    <#else>
<#--        No client-->
    </#if>
</@c.page>
