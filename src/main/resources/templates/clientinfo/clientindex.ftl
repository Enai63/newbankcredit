<#import "../parts/common.ftl" as c/>
<#import "../parts/navs.ftl" as navs>
<@c.page>
<@navs.navs></@navs.navs>
    <h1 class="display-6 text-center">Client info</h1>
    <div class="findClientId">
        <form method="get" action="/bank/clientinfo/id">
            <div class="input-group mb-3">
                <input type="number" name="id" class="form-control" placeholder="Entry id" aria-label="Entry id" aria-describedby="button-addon2">
                <button class="btn btn-outline-secondary " type="submit" id="button-addon2">Entry id</button>
            </div>
        </form>
    </div>
    <div class="addNewClient">
        <button type="button" class="btn btn-outline-success btn-lg btn-block" data-toggle="modal" data-target="#addClientModal" data-whatever="addNewClient">
            Add new client
        </button>
    </div>
    <div class="modalWindow">
        <div class="modal fade" id="addClientModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="addNewClient">Add new Client</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">

                        <form class="row g-3 needs-validation" action="/bank/clientinfo/addClient" method="post" novalidate>
                            <div class="col-md-4">
                                <label for="validationCustom0 clientSurName" class="col-form-label">Sur name:</label>
                                <input type="text" class="form-control" name="clientSurName" id="validationCustom0 clientSurName" required>
                                <div class="valid-feedback">
                                    Not empty
                                </div>
                            </div>

                            <div class="col-md-4">
                                <label for="validationCustom0 clientFirstName" class="col-form-label">First name:</label>
                                <input type="text" class="form-control" name="clientFirstName" id="validationCustom0 clientFirstName" required>
                                <div class="valid-feedback">
                                    Not empty
                                </div>
                            </div>

                            <div class="col-md-4">
                                <label for="validationCustom0 clientLastName" class="col-form-label">Last name:</label>
                                <input type="text" class="form-control" name="clientLastName" id="validationCustom0 clientLastName" required>
                                <div class="valid-feedback">
                                    Not empty
                                </div>
                            </div>

                            <div class="col-md-5">
                                <label for="validationCustom0 passportNumber" class="col-form-label">Passport number:</label>
                                <input type="number" class="form-control" name="passportNumber" id="validationCustom0 passportNumber" required>
                                <div class="valid-feedback">
                                    Not empty
                                </div>
                            </div>

                            <div class="col-md-5">
                                <label for="validationCustom0 phoneNumber" class="col-form-label">Phone number:</label>
                                <input type="number" class="form-control" name="phoneNumber" id="validationCustom0 phoneNumber" required>
                                <div class="valid-feedback">
                                    Not empty
                                </div>
                            </div>

                            <div class="col-md-6">
                                <label for="validationCustom0 email" class="col-form-label">Email:</label>
                                <input type="text" class="form-control" name="email" id="validationCustom0 email" required>
                                <div class="valid-feedback">
                                    Not empty
                                </div>
                            </div>

                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-outline-success">Add</button>
                    </div>
                    </form>
                </div>
                </div>
            </div>
        </div>
    </div>
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
<#--        </div>-->
        </table>
    <#else>
<#--        No client-->
    </#if>
                        <script>
                            (function () {
                                'use strict'
                                let forms = document.querySelectorAll('.needs-validation')
                                Array.prototype.slice.call(forms)
                                    .forEach(function (form) {
                                        form.addEventListener('submit', function (event) {
                                            if (!form.checkValidity()) {
                                                event.preventDefault()
                                                event.stopPropagation()
                                            }
                                            form.classList.add('was-validated')
                                        }, false)
                                    })
                            })()
                        </script>
</@c.page>
