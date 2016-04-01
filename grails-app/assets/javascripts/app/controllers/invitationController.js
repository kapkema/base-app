angular.module('partyPeople').controller('invitationController', function ($scope) {
    $scope.title = "Party People!";

    var getInvitees = function () {
        //this would come from your rest api
        return [
            {name: {first: "Homer", last: "Simpson"}},
            {name: {first: "Ned", last: "Flanders"}},
            {name: {first: "Milhouse", last: "Van Houten"}}
        ];
    };

    $scope.invitees = getInvitees();
});