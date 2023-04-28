<%@ page import="db.Items" %>
<%@ page import="java.util.ArrayList" %>
<html>
<head>
   <%@include file="head.jsp"%>
</head>
<body>
   <%@include file="navbar.jsp"%>
   <div class="container mt-5">
      <div class="row mt-5">
         <div class="col-12">
            <table class="table table-striped table-hover">
               <tbody>
               <%
               ArrayList<Items> items = (ArrayList<Items>) request.getAttribute("tasksi");
               if (items!=null){
               for (Items t : items){
               %>
               <tr>
                  <td><%=t.getId()%></td>
                  <td><%=t.getName()%></td>
                  <td><%=t.getDescription()%></td>
                  <td><%=t.getPrice()%></td>
                  <td>
                     <a class="btn btn-success btn-sm" href="#">Buy Now</a>
                  </td>
               </tr>
               <%
                  }
               }
               %>
               </tbody>
            </table>
         </div>
      </div>
   </div>
</body>
</html>
