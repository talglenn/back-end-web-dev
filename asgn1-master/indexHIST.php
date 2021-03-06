<?php
    require_once('database.php');

  
    // Get customers for selected category
    $query = "SELECT crn, courseName, section, day, time, location, instructor FROM history order by section;";
    //Result set
    $historys = $conn->query($query);
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
        
        <h1>History Courses available</h1>

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
                <?php foreach ($historys as $history) : ?>
                <tr>
                    <td><?php echo $history['crn']; ?></td>
                    <td><?php echo $history['courseName']; ?></td>
                    <td><?php echo $history['section']; ?></td>
                    <td><?php echo $history['day']; ?></td>
                    <td><?php echo $history['time']; ?></td>
                    <td><?php echo $history['location']; ?></td>
                    <td><?php echo $history['instructor']; ?></td>
                    
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