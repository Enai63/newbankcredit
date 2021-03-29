<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Clients bank</title>
</head>
<body>
<div class="returnIndex">
    <button>
        <a href="/index">Return index</a>
    </button>
</div>
<div class="clientAdd">
    <form method="post" >
        <label>
            <input type="text" name="firstName" placeholder="Entry firstname client"/>
        </label>
        <label>
            <input type="text" name="lastName" placeholder="Entry lastname client"/>
        </label>
        <label>
            <input type="text" name="email" placeholder="Entry email client"/>
        </label>
        <button type="submit">Add</button>
    </form>
</div>
<div class="findClient">
    <form method="post" action="findClient">
        <label>
            <input type="number" name="id" placeholder="Entry id"/>
        </label>
        <button type="submit">Find</button>
    </form>
    <#if clientfindId??>
        <h2>Id client ${clientfindId.id}</h2>
        <h2>First name ${clientfindId.firstName}</h2>
        <h2>Last name ${clientfindId.lastName}</h2>
        <h2>Email ${clientfindId.email}</h2>
    </#if>
</div>
    <div class="listClient">
    <#if clientsList??>
        <div class="clients">
            <form method="post" action="deleteClientId">
                <input type="hidden" name="_method" value="delete">
        <#list clientsList as client>
            <h2>Id client ${client.id} First name ${client.firstName} Last name ${client.lastName} Email ${client.email}</h2>
                <label>
                    <input type="hidden" name="id" value="${client.id}"/>
                </label>
            <button type="submit">Delete</button>
            </form>
        </#list>
        </div>
        <#else>
    </#if>
    </div>
</body>
</html>