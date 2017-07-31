var myApp = angular.module('myApp', ['ngRoute']);
//config routing
myApp.config(['$routeProvider', function ($routeProvider) {

    $routeProvider
        .when('/', {
            redirecTo:'/home'
        })




}])
//global variable for store Services base path

//controllers

//services


//http interceptor