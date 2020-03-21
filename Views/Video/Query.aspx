<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Query</title>
<meta charset="UTF-8">
    <meta name="description" content="ASP.NET MVC 2 CRUD Video">
    <meta name="Keywords" content="ASP.NET, MVC, FACPYA">
    <meta name="Author" content="Fernando Enrique Mascorro Garcia">
    <meta name="viewport" content="width=Device-width,Initial-scale=1.0">
    <link href="../../Content/Site.css" rel="stylesheet" type="text/css" />
</head>
<body>
<a href="/Home/Index">Inicio</a>

    <h1>Videos</h1>
    Hay <%:((System.Data.DataTable)ViewData["DataVideo"]).Rows.Count %> Video(s)
    <hr />
    <% 
    foreach (System.Data.DataRow video in ((System.Data.DataTable)ViewData["DataVideo"]).Rows)
    { %>
    
    <iframe width="560" height="315" src="<%: video["url"].ToString() %>"
    frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
    
    <p>Id:<%:video["idVideo"].ToString()%></p>

    <p>Titulo:<%:video["titulo"].ToString()%></p>

    <p>Reproducciones:<%:video["repro"].ToString()%></p>

    <p>URL:<%:video["url"].ToString()%></p>

    <%
    }
    %>

    <div>
    
    </div>
</body>
</html>