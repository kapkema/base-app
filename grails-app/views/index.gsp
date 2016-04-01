<!doctype html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">

    <asset:javascript src="application.js"/>
    <asset:stylesheet src="application.css"/>
</head>

<body ng-app="partyPeople">
<div id="container" ng-controller="invitationController">
    <div class="container">
        <div id="header" class="jumbotron">
            <h1 class="text-center">{{title}}</h1>
        </div>
    </div>

    <div class="container">
        <div id="list">
            <h3>Who's invited?!</h3>
            <table class="table table-condensed table-striped table-bordered">
                <thead>
                <tr>
                    <th>First</th>
                    <th>Last</th>
                </tr>
                </thead>
                <tbody>
                <tr ng-repeat="invitee in invitees">
                    <td>{{invitee.name.first}}</td>
                    <td>{{invitee.name.last}}</td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>

    <div class="container">
        <h3>Invite someone else?!</h3>

        <form id="add-user-form">
            <div class="form-group">
                <label for="firstNameInput">First Name</label>
                <input id="firstNameInput" class="form-control" placeholder="First Name" type="text"
                       ng-model="user.name.first" required/>
            </div>

            <div class="form-group">
                <label for="lastNameInput">Last Name</label>
                <input id="lastNameInput" class="form-control" placeholder="Last Name" type="text"
                       ng-model="user.name.last" required/>
            </div>

            <div class="form-group">
                <label for="emailAddressInput">Email</label>
                <input id="emailAddressInput" class="form-control" placeholder="E-mail address" type="email"
                       ng-model="user.email" required/>
            </div>
            <button type="submit" class="btn btn-primary" ng-click="invite(user)">Submit</button>
            <button type="submit" class="btn btn-default" ng-click="reset()">Reset</button>
            <div class="checkbox">
                <label>
                    <input type="checkbox" ng-model="debug"> Debug
                </label>
            </div>
        </form>

        <br/>
        <pre id="debug" ng-show="debug">user = {{user | json}}</pre>
    </div>

</div>
</body>

</html>