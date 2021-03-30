<#import '../parts/common.ftl' as c>
    <@c.page>
        <h1 class="display-6 text-center">Client info</h1>
        <table class="table table-sm table-dark">
            <div class="table-responsive">
                <table class="table table-bordered table-success">
                <#if clientList??>
                    <thead>
                    <tr>
                        <th scope="col">Client id</th>
                        <th scope="col">Sur name client</th>
                        <th scope="col">First name client</th>
                        <th scope="col">Last name client</th>
                        <th scope="col">Number passport client</th>
                        <th scope="col">Phone number client</th>
                        <th scope="col">Email client</th>
                        <th scope="col">Control</th>
                    </tr>
                    </thead>
                    <tbody>
                    <#list clientList as client>
                    <tr>
                        <td class="table-info">${client.id}</td>
                        <td class="table-info">${client.surName}</td>
                        <td class="table-info">${client.firstName}</td>
                        <td class="table-info">${client.lastName}</td>
                        <td class="table-info">${client.passportNumber}</td>
                        <td class="table-info">${client.phoneNumber}</td>
                        <td class="table-info">${client.email}</td>
                        <td class="table-info"></td>
                    </tr>
                    </tbody>
                   </#list>
                </table>
            </div>
        </table>
        <#else>
        No client
          </#if>
    </@c.page>
