<#macro clientEdit path>
<form class="row g-3 needs-validation" novalidate  action="${path}" name="editClient" method="post">
    <div class="col-md-4">
        <label for="validationCustom01" class="form-label">Sur name</label>
        <input type="text" name="surName" class="form-control" id="validationCustom01" required>
        <div class="invalid-feedback">
            Not empty
        </div>
    </div>

    <div class="col-md-4">
        <label for="validationCustom01" class="form-label">First name</label>
        <input type="text" name="firstName" class="form-control" id="validationCustom01" required>
        <div class="invalid-feedback">
            Not empty
        </div>
    </div>

    <div class="col-md-4">
        <label for="validationCustom01" class="form-label">Last name</label>
        <input type="text" name="lastName" class="form-control" id="validationCustom01" required>
        <div class="invalid-feedback">
            Not empty
        </div>
    </div>

    <div class="col-md-6">
        <label for="validationCustom01" class="form-label">Passport number</label>
        <input type="number" name="passportNumber" class="form-control" id="validationCustom01" required>
        <div class="invalid-feedback">
            Not empty
        </div>
    </div>

    <div class="col-md-6">
        <label for="validationCustom01" class="form-label">Phone number</label>
        <input type="number" name="phoneNumber" class="form-control" id="validationCustom01" required>
        <div class="invalid-feedback">
            Not empty
        </div>
    </div>

    <div class="col-md-3">
        <label for="validationCustom01" class="form-label">Email</label>
        <input type="text" name="email" class="form-control" id="validationCustom01" required>
        <div class="invalid-feedback">
            Not empty
        </div>
    </div>

    <div class="col-10">
        <button type="submit" formmethod="post" class="btn btn-outline-success">Add client</button>
    </div>
    <div class="col-sm-5">
        <button type="reset" class="btn btn-outline-primary" onclick="location.href='/bank/clientinfo';">Return</button>
    </div>
</form>

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

</#macro>