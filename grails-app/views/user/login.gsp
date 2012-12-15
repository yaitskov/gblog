<div class='form login'>
    <form method="POST">
        <div class='row'>
            <span>Login</span>
            <input name='login' type='text' value='${login}'/>
        </div>

        <div class='row'>
            <span>Password</span>
            <input name='pass' type='password' value='${pass}'/>
        </div>

        <div class='row'>
            <input type='submit' value='login'/>
        </div>
        <g:if test="${message}">
            <div class='row'>
                <span class='error'>${message}</span>
            </div>
        </g:if>
    </form>
</div>