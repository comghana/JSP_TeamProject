<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
  <head>
    <meta charset="utf-8">
    <title>Recommend</title>
    <style>
    table {
    margin-left: auto;
    margin-right: auto;
    text-align: center;
    }
    th {
    border:1px solid gray;
    background-color:#EAEAEA;"
    width: 149;
    height: 45;
    text-align: center;
    }
    td {
    border:1px solid gray;" 
    width: 149; 
    height: 45;
    text-align: center;
    }
    </style>
  </head>
  <body>
    <br><br>
  <%@ include file="Top.jsp" %>
  <br><br>
  <h2 style="text-align:center;">추천여행지 관리</h2>
  <div>
  <table>
    <th>대륙</th>
    <th>나라</th>
    <th>도시</th>
    <th>이미지</th>
    <th>추가여부</th>
    <tr>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td> <input type="checkbox" name="" value=""> </td>
    </tr>
  </table>
  </div>
  <%@ include file="Bottom.jsp" %>
  </body>
</html>