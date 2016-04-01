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
                <tr ng-repeat="invitee in invitees track by $index" ng-id="invitee-{{$index}}">
                    <td ng-id="invitee-first-name-{{$index}}">{{invitee.name.first}}</td>
                    <td ng-id="invitee-last-name-{{$index}}">{{invitee.name.last}}</td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>

    <div class="row">

    </div>
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <h3>Invite someone else?!</h3>

                <form id="add-user-form" name="userForm" novalidate>
                    <div class="form-group" ng-class="{ 'has-error' : hasError(userForm.first) }">
                        <label for="firstNameInput">First Name</label>
                        <input id="firstNameInput" name="first" class="form-control" placeholder="First Name"
                               type="text"
                               ng-model="user.name.first" required/>
                    </div>

                    <div class="form-group" ng-class="{ 'has-error' : hasError(userForm.last) }">
                        <label for="lastNameInput">Last Name</label>
                        <input id="lastNameInput" name="last" class="form-control" placeholder="Last Name" type="text"
                               ng-model="user.name.last" required/>
                    </div>

                    <div class="form-group" ng-class="{ 'has-error' : hasError(userForm.email) }">
                        <label for="emailAddressInput">Email</label>
                        <input id="emailAddressInput" name="email" class="form-control" placeholder="E-mail address"
                               type="email" ng-model="user.email" required/>
                    </div>
                    <button type="submit" ng-disabled="!userForm.$valid" class="btn btn-primary"
                            ng-click="invite(user)">Invite</button>
                    <button type="submit" ng-disabled="userForm.$pristine" class="btn btn-default"
                            ng-click="reset()">Reset</button>

                    <div class="checkbox">
                        <label>
                            <input type="checkbox" ng-model="debug" ng-change="trackDebug()"> Debug
                        </label>
                    </div>
                </form>



                <br/>
                <pre id="debugTracker">Debug has been activated {{debugCount}} times</pre>
                <pre id="debug" ng-show="debug">user = {{add-user-form.emailAddressInput.$touched | json}}</pre>

            </div>
            <div class="col-md-6">
                <select ng-model="selectedGuest" ng-options="invitee.name.first for invitee in invitees">
                    <option value="">Pick invitee</option>
                </select>
                <p>Current Guest: {{selectedGuest.email}}</p>
            </div>
        </div>

    </div>
</body>

</html>