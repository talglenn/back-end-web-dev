<?php
    require_once('database.php');

  
    // Get customers for selected category
    $query = "SELECT crn, courseName, section, day, time, location, instructor FROM psychology order by section;";
    //Result set
    $psychologys = $conn->query($query);
?>
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
        
        <h1>Psychology Courses available</h1>

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
                <?php foreach ($psychologys as $psychology) : ?>
                <tr>
                    <td><?php echo $psychology['crn']; ?></td>
                    <td><?php echo $psychology['courseName']; ?></td>
                    <td><?php echo $psychology['section']; ?></td>
                    <td><?php echo $psychology['day']; ?></td>
                    <td><?php echo $psychology['time']; ?></td>
                    <td><?php echo $psychology['location']; ?></td>
                    <td><?php echo $psychology['instructor']; ?></td>
                    
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