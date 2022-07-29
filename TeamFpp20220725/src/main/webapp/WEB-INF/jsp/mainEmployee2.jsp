<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
  <head>
    <meta charset="utf-8" />
    <title>
        AngularJS - REST Demo using $http service
    </title>
    <!-- Load AngularJS -->
    <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.8.2/angular.min.js"></script>
    <script src="js/main.js"></script>
    <style>
      .button {
          cursor: pointer;
          color: blue;
      }
      td,th{
        border: 1px solid gray;
        width: 25%;
        text-align: left;
      }
      table {
        width: 600px;
      }
    </style>
  <head>
  <body ng-app="UserManagement" ng-controller="UserManagementController">
     <h1>
          AngularJS - Use $http to invoke RESTful APIs
      </h1>
 
      <table>
        <tr>
          <th>First Name</th>
          <th>Last Name</th>
          <th>Email</th>
          <th>Actions</th>
        </tr>
 
        <tr ng-repeat="employee in employees">
          <td>{{ employee.firstName }}</td>
          <td>{{ employee.lastName }}</td>
          <td>{{ employee.email }}</td>
          <td><a ng-click="editEmployee( employee )" class="button">Edit</a> | <a ng-click="removeEmployee( employee )" class="button">Remove</a></td>
        </tr>
 
      </table>
 
      <h2>Add/Edit Employee</h2>
 
    <form ng-submit="submitEmployee()">
        <table>
          <tr>
            <td>First Name</td>
            <td><input type="text" ng-model="form.firstName" size="60" /></td>
          </tr>
        <tr>
            <td>Last Name</td>
            <td><input type="text" ng-model="form.lastName" size="60" /></td>
          </tr>
          <tr>
            <td>Email</td>
            <td><input type="text" ng-model="form.email" size="60" /></td>
          </tr>
          <tr>
            <td colspan="2"><input type="submit" value="Submit" /></td>
          </tr>
        </table>
    </form>
 
  </body>
</html>

 

