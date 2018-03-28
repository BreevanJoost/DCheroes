<?php include 'inc/DBConnection.php'; ?>

<?php

    if(isset($_POST['submitRating'])) {
      $insertSQL =
    "INSERT INTO
    guestbook
    (guestBookId, firstName, insertion, lastName, email, webAdress, messageTitle, Message, ratingDate)
    VALUES
    (
    null,
    '" . $_POST['firstname'] . "',
    '" . $_POST['insertion'] . "',
    '" . $_POST['lastname'] . "',
    '" . $_POST['email'] . "',
    '" . $_POST['webAdress'] . "',
    '" . $_POST['messageTitle'] . "',
    '" . $_POST['message'] . "',
    NOW()
    )
    ";
      $result1 = $conn->query($insertSQL) or die($conn->error);
      header("Location: index.php");
    }
    //get hero rating
      $getCommands = "SELECT * FROM guestbook ";
      $resultCommand = $conn->query($getCommands) or die($conn->error);

      $heroRating = array();

      if ($resultCommand->num_rows > 0) {
        // output data of each row
        while ($row3 = $resultCommand->fetch_assoc())
        {
          $reviews[]= $row3;
        }

  }

?>

<!DOCTYPE html>
<html>
    <head>

      <meta charset="utf-8">
      <link href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css" rel="stylesheet" type="text/css" />
      <link rel="stylesheet" type="text/css" href="css/style.css">
      <script src='https://www.google.com/recaptcha/api.js'></script>
      <meta charset="utf-8">
      <meta name="description" content="Guestbook Joost van Bree">
      <meta name="keywords" content="HTML,CSS">
      <meta name="author" content="Joost van Bree">
      <meta name="copyright" content="Joost van Bree">
      <title>GuestBook</title>
    </head>
    <body>




      <div id="nameContainer"><h1>Guestbook</h1></div>
      <div id="mainContainer">
        <div id="formContainer">
          <h2 class="reviewTable"><i class="far fa-comments"></i>&nbsp;Review form:</h2>
          <div id="formAtributesContainer">

        <form name="contactform" method="post" action="index.php">
          <table id="formTable" width="450px">
            <tr>
              <td valign="top">
                <label for="firstname">First Name:</label>
              </td>
              <td valign="bottom">
                <input required placeholder="Your firstname" type="text" name="firstname" maxlength="50">
              </td>
            </tr>
            <tr>
              <td valign="top">
                <label for="insertion">Insertion:</label>
              </td>
              <td valign="bottom">
                <input type="text" placeholder="Your Insertion" name="insertion" maxlength="50">
              </td>
            </tr>
            <tr>
              <td valign="top">
                <label for="lastname">Last Name:</label>
              </td>
              <td valign="top">
                <input required type="text" placeholder="Your Lastname" name="lastname" maxlength="50">
              </td>
            </tr>
            <tr>
              <td valign="top">
                <label for="email">Email Address:</label>
              </td>
              <td valign="top">
                <input required placeholder="Your Email" type="email" name="email" maxlength="80">
              </td>
            </tr>
            <tr>
              <td valign="top">
                <label for="email">Web Address:</label>
              </td>
              <td valign="top">
                <input required placeholder="Your Webadress" type="text" name="webAdress" maxlength="80">
              </td>
            </tr>
            <tr>
              <td valign="top">
                <label for="messageTitle">Message title:</label>
              </td>
              <td valign="top">
                <input required placeholder="Your Messagetitle" type="text" name="messageTitle" maxlength="80">
              </td>
            </tr>
            <tr>
              <td valign="top">
                <label for="message">Message:</label>
              </td>
              <div id="messageBox">
              <td valign="top">
                <textarea type="message" placeholder="Your Message" required name="message" maxlength="1000" rows="5"></textarea>
              </td>
              </div>
            </tr>
            <tr>
              <td colspan="2" style="text-align:center">
                <a><input class="buttons" type="submit" name="submitRating" value="Submit" onclick="myFunction()"></a>
                <script>
                  function myFunction() {
                    alert("Thanks for your post!");
                  }
                </script>
                <a><input class="buttons" type="reset" name="resetInputs" value="Reset"></a>
              </td>
            </tr>
          </table>

        </form>
      </div>
      </div>
      <div id="commentsContainer">
        <h2 class="reviewTable"><i class="far fa-comments"></i>&nbsp;Previous reviews:</h2>
          <div id="commentAtributesContainer">
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
                      <td><div id= "comments"><?php echo $heroReview['firstName']; ?> <?php echo $heroReview['insertion']; ?> <?php echo $heroReview['lastName']; ?></div></td>
            					<td><i class="far fa-clock" style="font-size:24px; color: #0282f9;"></i></td>
            				</tr>
                    <tr>
            					<td><i class="far fa-calendar" style="font-size:24px; color: #0282f9;"></i></td>
            					<td><div id= "comments"><?php echo $heroReview['messageTitle']; ?></div></td>
                      <td><div id= "comments"><?php echo $heroReview['webAdress']; ?></div></td>
            					<td><i class="far fa-clock" style="font-size:24px; color: #0282f9;"></i></td>
            				</tr>
            				<tr><td colspan="4"><div id= "comments"><?php echo nl2br($heroReview['Message']); ?></div></td></tr>
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

              </div>
              <?php include 'inc/Footer.php'; ?>
            </div>

      </div>
      <!-- <script type="text/javascript">
        function alert()
        {
          alert("Resetting");
        }
      </script> -->
    </body>

</html>
