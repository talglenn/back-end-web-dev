<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="assignment2.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="lbl1" runat="server" Text="Welcome to Columbus State University!" Font-Bold="True" Font-Size="Large" ForeColor="#666699"></asp:Label>
    <br />
    <asp:Label ID="lbl2" runat="server" Text="Choose a semester" Font-Bold="True" Font-Size="Large" ForeColor="#FFCC66"></asp:Label>
    <br />
    <asp:Label ID="lbl3" runat="server" Text="Then choose a subject" Font-Bold="True" Font-Size="Large" ForeColor="#FFCC66"></asp:Label>
    <br />
    <br />
    <asp:DropDownList ID="dropdwn1" runat="server" DataSourceID="SqlDataSource1" DataTextField="semesterName" DataValueField="semesterID">
        <asp:ListItem Selected="True">Choose a semester</asp:ListItem>
        
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:semesterDBConnectionString %>' SelectCommand="SELECT [semesterID], [semesterName] FROM [semester]"></asp:SqlDataSource>
    <br />
    <br />
    <asp:DropDownList ID="dropdwn2" onchange="gotoPage(this)" runat="server" OnSelectedIndexChanged="dropdwn2_SelectedIndexChanged" DataSourceID="SqlDataSource2" AutoPostBack="True" DataTextField="courseName" DataValueField="courseName">
        <asp:ListItem Selected="True">Choose a subject</asp:ListItem>
    </asp:DropDownList>

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString='<%$ ConnectionStrings:semesterDBConnectionString %>' SelectCommand="SELECT [courseName] FROM [courses] WHERE ([semesterID] = @semesterID) ORDER BY [courseName]">
        <SelectParameters>
            <asp:ControlParameter ControlID="dropdwn1" PropertyName="SelectedValue" Name="semesterID" Type="Int32"></asp:ControlParameter>
        </SelectParameters>
    </asp:SqlDataSource>

    <!DOCTYPE html>
    <header runat="server">
    </header>
    <body>
        <script>
            /*global i*/
            function jsFunction() {
                var drop1 = document.getElementById("dropdwn1");
                var myselect = drop1.options[drop1.selectedIndex].value;
                var drop2 = document.getElementById("dropdwn2");

                for (i = 0; i < drop2.options.length; i++) {
                    drop2.options[i] = null;
                }
                if (myselect === "1") {
                    //Spring
                    var opt = document.createElement('option');
                    opt.value = "";
                    opt.innerHTML = "Select subject";
                    drop2.appendChild(opt);

                    opt = document.createElement('option');
                    opt.value = "indexArt.php";
                    opt.innerHTML = "Art";
                    drop2.appendChild(opt);

                    opt = document.createElement('option');
                    opt.value = "indexCPSC.php";
                    opt.innerHTML = "Computer Science";
                    drop2.appendChild(opt);

                    opt = document.createElement('option');
                    opt.value = "indexHIST.php";
                    opt.innerHTML = "History";
                    drop2.appendChild(opt);

                    //document.getElementById("drop2").submit();
                }

                else if (myselect === "2") {
                    //Summer
                    var opt = document.createElement('option');
                    opt.value = "";
                    opt.innerHTML = "Select subject";
                    drop2.appendChild(opt);

                    opt = document.createElement('option');
                    opt.value = "indexMath.php";
                    opt.innerHTML = "Math";
                    drop2.appendChild(opt);

                    opt = document.createElement('option');
                    opt.value = "indexGEOL.php";
                    opt.innerHTML = "Geology";
                    drop2.appendChild(opt);

                    opt = document.createElement('option');
                    opt.value = "indexCHEM.php";
                    opt.innerHTML = "Chemistry";
                    drop2.appendChild(opt);
                }

                else if (myselect === "3") {
                    //Fall
                    var opt = document.createElement('option');
                    opt.value = "";
                    opt.innerHTML = "Select subject";
                    drop2.appendChild(opt);

                    opt = document.createElement('option');
                    opt.value = "indexCRJU.php";
                    opt.innerHTML = "Criminal Justice";
                    drop2.appendChild(opt);

                    opt = document.createElement('option');
                    opt.value = "indexENGL.php";
                    opt.innerHTML = "English";
                    drop2.appendChild(opt);

                    opt = document.createElement('option');
                    opt.value = "indexPSYC.php";
                    opt.innerHTML = "Psychology";
                    drop2.appendChild(opt);
                }

            }
            function gotoPage(select) {
                window.location = select.value;
            }

    </script>
    </body>

    </html>
</asp:Content>

