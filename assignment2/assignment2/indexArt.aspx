<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="indexArt.aspx.cs" Inherits="assignment2.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <!DOCTYPE html>
<html>

<!-- the head section -->
<head>
    <title>CSU Courses</title>
    <link rel="stylesheet" type="text/css" href="main.css" />
</head>

<!-- the body section -->
<body>
    <div id="page">

    <div id="header">
        <h1>Columbus State University</h1>
    </div>

    <div id="main">
        
        <h1>Art Courses available</h1>

        <div id="content">
            <!-- display a table of courses -->
            <table>
                <tr>
                    <th>CRN</th>
                    <th>Course Name</th>
                    <th>Section</th>
                    <th>Day</th>
                    <th>Time</th>
                    <th>Location</th>
                    <th>Instructor</th>
                </tr>
                <?php foreach ($arts as $art) : ?>
                <tr>
                    <td><?php echo $art['crn']; ?></td>
                    <td><?php echo $art['courseName']; ?></td>
                    <td><?php echo $art['section']; ?></td>
                    <td><?php echo $art['day']; ?></td>
                    <td><?php echo $art['time']; ?></td>
                    <td><?php echo $art['location']; ?></td>
                    <td><?php echo $art['instructor']; ?></td>
                    
                </tr>
                <?php endforeach; ?>
            </table>
        </div>
    </div>

    <div id="footer">
        <p>&copy; <?php echo date("Y"); ?> CSU, Inc.</p>
    </div>

    </div><!-- end page -->
</body>
</html>
</asp:Content>
