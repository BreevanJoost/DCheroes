<?php include 'inc/DBConnection.php'; ?>

<?php

$sql = 'SELECT * FROM team';
  $result = $conn->query($sql) or die($conn->error);

  $teams = array();

  if ($result->num_rows > 0) {
    // output data of each row
    while ($row = $result->fetch_assoc())
    {
      $teams[]= $row;
    }
  }

  if(isset($_GET['teamId']))
  {
    $teamId = $_GET['teamId'];

  $sql2 = 'SELECT * FROM hero WHERE teamId = ' . $teamId;
    $result2 = $conn->query($sql2) or die($conn->error);

    $heroes = array();

    if ($result2->num_rows > 0) {
      // output data of each row
      while ($row = $result2->fetch_assoc())
      {
        $heroes[]= $row;
      }
    }
  }
  else {
    $sql2 = 'SELECT * FROM hero';
      $result2 = $conn->query($sql2) or die($conn->error);

      $heroes = array();

      if ($result2->num_rows > 0) {
        // output data of each row
        while ($row = $result2->fetch_assoc())
        {
          $heroes[]= $row;
        }
      }
  }

  if(isset($_GET['heroId']))
  {
      //get hero info
    $heroId = $_GET['heroId'];

    $sql3 = "SELECT * FROM hero WHERE heroId = '". $heroId. "'";
    $result3 = $conn->query($sql3) or die($conn->error);

    $heroDetail = array();

    if ($result3->num_rows > 0) {
      // output data of each row
      while ($row = $result3->fetch_assoc())
      {
        $heroDetail[]= $row;
      }
    }

    //get hero rating
      $getRatingHero = "SELECT * FROM rating WHERE heroId = '". $heroId. "'";
      $resultRating = $conn->query($getRatingHero) or die($conn->error);

      $heroRating = array();

      if ($resultRating->num_rows > 0) {
        // output data of each row
        while ($row3 = $resultRating->fetch_assoc())
        {
          $reviews[]= $row3;
        }
      }
  }

  if(isset($_POST['submitRating'])) {


    $ratingText = $_POST['myMessage'];
    $rating =  $_POST['rating'];

    $insertHeroRating = "INSERT INTO rating (ratingReview, heroId, rating, ratingDate)
            VALUES ('$ratingText', '$heroId', '$rating', NOW())";


    mysqli_query($conn, $insertHeroRating);

    header("location: http://localhost/periode2/DCHeroes/index.php?teamId=" . $teamId . "&heroId=" . $heroId . " ");
  }
?>

<!DOCTYPE html>
<html>
    <head>
      <meta charset="utf-8">
      <link href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css" rel="stylesheet" type="text/css" />
      <link rel="stylesheet" type="text/css" href="css/style.css">
      <link rel="icon" href="images/DClogo.png" type="image/png">
      <title>DC Heroes</title>
    </head>
    <body>
      <header id= "main-header">
        <div id= "leftSide-logo"><a href="index.php"><img src="images/DC.png" height="100"></a></div>
        <div id= "rightSide-logo"><a href="index.php"><h1>Heroes</h1></a></div>
      </header>
      <div id= "main-container";>
      <div id= "Naviagtion";><h1 id="nav-head">Teams</h1><div id= "nav-options"><?php include 'inc/menu.php'; ?></div></div>
      <div id= "main2";>
        <?php
        foreach($heroes as $hero)
        {
          ?>
          <div id="superheroes">
            <div id= "heroImage">
              <?php
              echo "<img src='".$hero['heroImage']."'>";
              ?>
            </div>
            <div id= "heroName">
            <?php
            echo $hero['heroName'];
            ?>
            </div>
            <div id= "heroImpression">
            <?php
            echo $hero['heroImpression'];
            ?>
            </div>
            <a href="index.php?teamId=<?php echo $hero['teamId']?>&heroId=<?php echo $hero['heroId']; ?>"
              class="more-info-btn">
                More info
              </a>
          </div>
          <?php
        }
        ?>
      </div>
      <div id= "main3";>

      <div id="one-hero">
        <div id="special-hero">
          <div id= "heroBackground">
          <img src="images/superhero-background.jpg">
          </div>

          <div>

            <?php
            if(isset($heroId)) {
              foreach($heroDetail as $hero)
              {
                ?>

                  <div id="Special-heroName">
                    <?php
                  echo $hero['heroName'];
                    ?>
                  </div>
                  <div id="Special-heroImage">
                    <?php
                  echo "<img src='".$hero['heroImage']."'>";
                  ?>
                  </div>
                  <div id= "big-block">
                  <div id="Special-Head-Description">
                    <h2>Description</h2>
                  </div>
                  <div id="Special-heroDescription">
                    <?php
                  echo $hero['heroDescription'];
                    ?>
                  </div>
                  <div id="Special-Powers">
                    <h2>Powers:</h2>
                  </div>
                  <div id="Special-heroPower">
                    <?php
                  echo $hero['heroPower'];
                    ?>
                  </div>
                   <form action="" method="POST">
                    <div id="test">
                      <h2 id= "stars">Stars</h2>
                    <div class="rate" required>
                      <input type="radio" id="rating10" name="rating" value="10" /><label class="lblRating" for="rating10" title="5 stars"></label>
                        <input type="radio" id="rating9" name="rating" value="9" /><label class="lblRating half" for="rating9" title="4 1/2 stars"></label>
                        <input type="radio" id="rating8" name="rating" value="8" /><label class="lblRating" for="rating8" title="4 stars"></label>
                        <input type="radio" id="rating7" name="rating" value="7" /><label class="lblRating half" for="rating7" title="3 1/2 stars"></label>
                        <input type="radio" id="rating6" name="rating" value="6" /><label class="lblRating" for="rating6" title="3 stars"></label>
                        <input type="radio" id="rating5" name="rating" value="5" /><label class="lblRating half" for="rating5" title="2 1/2 stars"></label>
                        <input type="radio" id="rating4" name="rating" value="4" /><label class="lblRating" for="rating4" title="2 stars"></label>
                        <input type="radio" id="rating3" name="rating" value="3" /><label class="lblRating half" for="rating3" title="1 1/2 stars"></label>
                        <input type="radio" id="rating2" name="rating" value="2" /><label class="lblRating" for="rating2" title="1 star"></label>
                        <input type="radio" id="rating1" name="rating" value="1" /><label class="lblRating half" for="rating1" title="1/2 star"></label>
                        <input type="radio" id="rating0" name="rating" value="0" /><label class="lblRating" for="rating0" title="No star"></label>
                    </div>

            				<div class="divMessage">

            					<h2 id= "review">Review</h2>

            				</div>


                    <div id="myMessage">
                    <textarea id= "textarea" required name="myMessage"></textarea>
                  </div>
            				<div class="divSubmit">
            					<input type="submit" name="submitRating" value="Review!"/>
            					<input type="hidden" name="heroId" value="<?php echo $hero["heroId"]; ?>"/>
            				</div>

            			</fieldset>
            		</form>
            		<h2 class="reviewTable"><i class="far fa-comments"></i>&nbsp;Comments</h2>

            		<?php
            		if(!empty($reviews))
            		{
            			// print table
            			echo "<table class=\"reviewTable\">";
            			foreach($reviews as $heroReview)
            			{
            				?>
            				<tr>
            					<td><i class="far fa-calendar" style="font-size:24px; color: #0282f9;"></i></td>
            					<td><div id= "comments"><?php echo $heroReview['ratingDate']; ?></div></td>
            					<td><i class="far fa-clock" style="font-size:24px; color: #0282f9;"></i></td>
            				</tr>
            				<tr><td colspan="4"><div id= "comments1"><?php echo nl2br($heroReview['ratingReview']); ?></div></td></tr>
            				<tr><td colspan="4"><hr /></td></tr>
            				<?php
            			}
            			echo "</table>";
            		}
            		else
            		{
            			?>
            			<h5 class="reviewTable"><i class="fas fa-info-circle"></i>&nbsp;No comments yet..</h5>
            			<?php
            		}
            		?>
                  </div>
                  <div id= "noHeroSelected">
                <?php
              }
            }
            else {
                echo "<p class='noHeroSelected'>Select a hero!</p>";
                echo "<p class='noHeroSelectedDescription'>No hero selected, <br />
                      please select a hero on the left.</p>";
            }
            ?>
          </div>
          </div>


        </div>
      </div>
      </div>
    </div>

    </body>

</html>
