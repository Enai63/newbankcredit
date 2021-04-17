<#macro editclient path>
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
<#--                    "/bank/clientinfo/addClient"-->
                    <form class="row g-3 needs-validation" action="${path}" method="post" novalidate>
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
</#macro>