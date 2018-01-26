<nav id="nav-options">
  <?php
foreach($teams as $key => $team)
{
?>
<ul><a href="index.php?teamId=<?php echo $team["teamId"]; ?>"><h2 id="Category1"><div id= "teamImage"><?php echo "<img src='".$team['teamImage']."'>";?></div><div id= "teamName"><?php echo $team["teamName"]; ?></div></h2></a></ul>
<?php
}
?>
</nav>
