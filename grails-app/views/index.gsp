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
    <div id="header" class="jumbotron">
        <h1 class="text-center">{{title}}</h1>
    </div>

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

    <div id="form">
        <h3>Invite someone else?!</h3>

        <div id="first-name">First Name</div>

        <div id="last-name">Last Name</div>
    </div>
</div>
</body>

</html>