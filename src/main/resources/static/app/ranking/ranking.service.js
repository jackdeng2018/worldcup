'use strict';

angular.module('worldcup').factory('Ranking', function($http) {

    var getLeaderboard = function(filter) {
        if (filter == null) filter = "goal";
        return $http.get("api/ranking/?filter="+filter).then(function(response) {
            return  response.data;
        });
    };
    return {
        getLeaderboard : getLeaderboard
    };
});

var refreshTable = function(filter) {
            // Clear existing data from the table
            $('#tbl tbody').empty();
            // Populate the table with the new data
            var data = query(filter);
            var index = 0;
            for (const item of data) {
                index += 1
            $('#tbl tbody').append(
              '<tr>' +
                '<td>' + index + '</td>' +
                '<td>' + item.name + '</td>' +
                '<td>' + item.age + '</td>' +
                '<td>' + item.position + '</td>' +
                '<td>' + item.goal + '</td>' +
                '<td>' + item.assist + '</td>' +
                '<td>' + item.height + '</td>' +
                '<td>' + item.weight + '</td>' +
                '<td>' + item.nationality + '</td>' +
              '</tr>'
            );
        }
    };

var query = function(filter) {
    var result="";
        $.ajax({
          type: "GET",
          url: "http://localhost:8080/api/ranking/?filter=" + filter,
          async: false,
          success:function(data) {
             result = data;
          }
       });
    return result;


//        dataType:"json"
//        success: function(data) {
//            return data
//        },
//        error: function() {
//            alert("failed" + data.responseText);
//        }
};