<#import "parts/common.ftl" as c>

<@c.page>
    List if users
    <table class="table table-bordered table-hover">
        <thead class="thead-dark">
        <tr>
            <th scope="col">Name</th>
            <th scope="col">Role</th>
            <th csope="col"></th>
        </tr>
        </thead>
        <tbody>

        <#list users as user>
            <tr>

                <td>${user.username}</td>
                <td><#list user.roles as role>${role}<#sep>, </#list></td>
                <td>
                    <a class="btn btn-primary" role="button" href="user/${user.id}">edit</a>
                    <a class="btn btn-primary" role="button" href="#">delete</a>
                </td>
            </tr>
        </#list>
        </tbody>
    </table>
</@c.page>