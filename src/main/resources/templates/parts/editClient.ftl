<#macro clientEdit path>
<form action="${path}" name="editClient" method="post">
    <div class="input-group input-group-sm mb-3">
        <input type="text" id="surName" name="surName" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm">
        <span class="input-group-text" id="inputGroup-sizing-sm">Sur name</span>
    </div>
    <div class="input-group input-group-sm mb-3">
        <input type="text" id="firstName" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm">
        <span class="input-group-text" id="inputGroup-sizing-sm">First name</span>
    </div><div class="input-group input-group-sm mb-3">
        <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm">
        <span class="input-group-text" id="inputGroup-sizing-sm">Last name</span>
    </div>
    <div class="input-group input-group-sm mb-3">
        <input type="number" id="passportNumber" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm">
        <span class="input-group-text" id="inputGroup-sizing-sm">Passport number</span>
    </div>
    <div class="input-group input-group-sm mb-3">
        <input type="number" id="phoneNumber" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm">
        <span class="input-group-text" id="inputGroup-sizing-sm">Phone number</span>
    </div>
    <div class="input-group input-group-sm mb-3">
        <input type="email" id="email" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm">
        <span class="input-group-text" id="inputGroup-sizing-sm">Email</span>
    </div>
    <label>
    <button type="submit" formmethod="post" class="btn btn-outline-success">Add client</button>
    </label>
    <label>
        <button type="reset" class="btn btn-outline-primary" onclick="location.href='/bank/clientinfo';">Return</button>
    </label>
</form>

</#macro>