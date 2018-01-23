<!DOCTYPE html>
<html>

<!-- the head section -->
<head>
    <title>Columbus State University Class Selection</title>
    <link rel="stylesheet" type="text/css" href="main.css" />
    
</head>

<!-- the body section -->
<body>
    <div id="page">

    <div id="header">
        <h1>Columbus State University Class Selection</h1>
        <h2>Select a Semester</h2>
        <h2>Then choose a subject.</h2>
    </div>
    <!-------semester dropdown----------->
    <select onChange = "jsFunction()" id= "dropdwn1" >
      <option value = selected >Choose a semester.</option>
      <option value="1">Spring</option>
      <option value="2">Summer</option>
      <option value="3">Fall</option>
    </select>
     <!-------subjects dropdown----------->
     <br />
     <br />
     <select id= "dropdwn2" onchange="gotoPage(this)">
      <option value="selected">Choose a subject.</option>
     </select>
     <br />
     <br />
    
    
    <!--<select id="springDropdwn">-->
      <!-------spring subjects dropdown----------->
    <!--  <option>Select a subject</option>-->
    <!--  <option value="">Art</option>-->
    <!--  <option value="">Computer Science</option>-->
    <!--  <option value="">History</option>-->
    <!--</select>-->
    
    <!--<select id="summerDropdwn">-->
      <!-------summer subjects dropdown----------->
    <!--  <option>Select a subject</option>-->
    <!--  <option value="">Math</option>-->
    <!--  <option value="">Geology</option>-->
    <!--  <option value="">Chemistry</option>-->
    <!--</select>-->
    
    <!--<select id="fallDropdwn">-->
      <!-------fall subjects dropdown----------->
    <!--  <option>Select a subject.</option>-->
    <!--  <option value="">Criminal Justice</option>-->
    <!--  <option value="">English</option>-->
    <!--  <option value="">Psychology</option>-->
    <!--</select>-->
     
    <div id="footer">
        <p>&copy; <?php echo date("Y"); ?> CSU, Inc.</p>
    </div>

    </div><!-- end page -->
    
    <script>
    /*global i*/
    function jsFunction()
    {
        var drop1 = document.getElementById("dropdwn1");
        var myselect = drop1.options[drop1.selectedIndex].value;
        var drop2 = document.getElementById("dropdwn2");
        
        for(i=0; i < drop2.options.length; i++)
        {
            drop2.options[i] = null; 
        }
        if(myselect ==="1")
        {
            //Spring
            var opt = document.createElement ('option');
            opt.value = "";
            opt.innerHTML = "Select subject";
            drop2.appendChild(opt);
            
            opt = document.createElement ('option');
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
        
        else if(myselect ==="2")
        {
            //Summer
            var opt = document.createElement ('option');
            opt.value = "";
            opt.innerHTML = "Select subject";
            drop2.appendChild(opt);
            
            opt = document.createElement ('option');
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
        
        else if(myselect ==="3")
        {
            //Fall
            var opt = document.createElement ('option');
            opt.value = "";
            opt.innerHTML = "Select subject";
            drop2.appendChild(opt);
            
            opt = document.createElement ('option');
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
   function gotoPage(select)
   {
    window.location = select.value;
   }
      
    </script>
</body>
</html>