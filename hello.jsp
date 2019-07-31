<%@ page language="java" %>
<html>
<body>
<table border="1">
<tr><td><b>Property Names</b></td>
<td><b>Property Values</b></td></tr>
<%
final String[] properties = {
"java.runtime.name",
"java.vm.vendor",
"java.runtime.version",
"jboss.server.name",
"jboss.node.name"
};
for (int i = 0; i < properties.length; i++) {
String pname = properties[i];
String pvalue = System.getProperty(pname);
%>
<tr>
<td><%= pname %></td>
<td><%= pvalue %></td>
</tr>
<% } %>
</table>
</body>
</html>
