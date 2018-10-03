<!DOCTYPE html>
<html>
<head>
<style>
table {
    width: 100%;
    border-collapse: collapse;
}

table, td, th {
    border: 1px solid black;
    padding: 5px;
}

th {text-align: left;}
</style>
</head>
<body>

<?php
$con = mysqli_connect('localhost:3306','root','','fixture');
if (!$con) {
    die('no encuentra la coneccion: ' . mysqli_error($con));
}
//echo 'te conectaste a la BD';
$sql="SELECT * FROM club1";
$result = mysqli_query($con,$sql);

echo "<table>
<tr>
<th>Firstname</th>
<th>Lastname</th>
<th>Age</th>
<th>Hometown</th>
<th>Job</th>
</tr>";
while($row = mysqli_fetch_assoc($result)) {
    echo "<tr>";
    echo "<td>" . $row['ID'] . "</td>";
    echo "<td>" . $row['equipo'] . "</td>";
    echo "<td>" . $row['estadio'] . "</td>";
    echo "<td>" . $row['pmas'] . "</td>";
    echo "<td>" . $row['pmenos'] . "</td>";
    echo "</tr>";
}
echo "</table>";
mysqli_close($con);
?>
</body>
</html>