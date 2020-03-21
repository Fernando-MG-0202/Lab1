<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Delete</title><meta charset="UTF-8">
    <meta name="description" content="ASP.NET MVC 2 CRUD Video">
    <meta name="Keywords" content="ASP.NET, MVC, FACPYA">
    <meta name="Author" content="Fernando Enrique Mascorro Garcia">
    <meta name="viewport" content="width=Device-width,Initial-scale=1.0">
    <link href="../../Content/Site.css" rel="stylesheet" type="text/css" />
</head>
<body>
<a href="/Home/Index">Inicio</a>
<form action="/video/Delete" method="post">
<fieldset>

<legend>Datos del video</legend>

<label for="idVideo">IdVideo</label>
<input type="text" name="idVideo" />

<input type="submit" value="Registro" />
    <div>
    
    </div>
</body>
</html>