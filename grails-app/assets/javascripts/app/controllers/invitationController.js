angular.module('partyPeople').controller('invitationController', function ($scope) {
    $scope.title = "Party People!";

    var getInvitees = function () {
        //this would come from your rest api
        return [
            {name: {first: "Homer", last: "Simpson"}, email: "homer@aol.com"},
            {name: {first: "Ned", last: "Flanders"}, email: "ned@aol.com"},
            {name: {first: "Milhouse", last: "Van Houten"}, email: "milhouse@gmail.com"}
        ];
    };

    $scope.invitees = getInvitees();

    $scope.invite = function (guest) {
        $scope.invitees.push(guest);
        $scope.reset();
    };

    $scope.reset = function () {
        $scope.user = {};
        $scope.userForm.$setPristine();
    };

    $scope.hasError = function(formValue) {
        return formValue.$invalid && !formValue.$pristine
    };
});