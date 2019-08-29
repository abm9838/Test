<!DOCTYPE html>
<html>
<head>
<style>
table {
    border-collapse: collapse;
    width: 100%;
}

th, td {
    text-align: left;
    padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2;}
 tr:hover {background-color: #ddd;}
 
</style>
</head>

<body>
<div class="background">
  <div class="transbox">
<?php 
session_start();	
$con = mysqli_connect("localhost","root"," ") or die("Unable to connect");
mysqli_select_db($con,'id10687587_deba');
if(isset($_POST['submit']))
		{
			$firstname=$_POST['firstname'];
	        //$lastname=$_POST['lastname'];
	       $mob=$_POST['mobile'];
			$loc=$_POST['location'];
			$blood=$_POST['bloodgroup'];
			
			$a= "insert into registration values('$firstname','$mob','$loc','$blood')";
						$query_run = mysqli_query($con,$a);
						$b=$blood;
						switch($b)
						{
							case if($b='A+') :
							$query=" select * from registration where loc='$loc' && (bg='A+' or bg='A-' or bg='O+' or bg='O-') ";
							break;
							case if($b='A-') :
							$query=" select * from registration where loc='$loc' && (bg='A-' or bg='O-') ";
							break;
							case if($b='B+') :
							$query=" select * from registration where loc='$loc' && (bg='B+' or bg='B-' or bg='O+' or bg='O-') ";
							break;
							case if($b='B-') :
							$query=" select * from registration where loc='$loc' && (bg='B-' or bg='O-') ";
							break;
							case if($b='AB+') :
							$query=" select * from registration where loc='$loc' && (bg='A+' or bg='B+' or bg='O+' or bg='AB+' or bg='A-' or bg='B-' or bg='O-' or bg='AB-') ";
							break;
							case if($b='AB-') :
							$query=" select * from registration where loc='$loc' && (bg='AB-' or bg='A-' or bg='B-' or bg='O-') ";
							break;
							case if($b='O+') :
							$query=" select * from registration where loc='$loc' && (bg='O+' or bg='O-') ";
							break;
							case if($b='O-') :
							$query=" select * from registration where loc='$loc' && (bg='O-') ";
							break;
							default:
							
							echo '<script type="text/javascript"> alert("No Donors available")</script>';
							header('location:reqq.html');
						}
							
							
								
						//if($blood='O+')
						//$q=" select * from registration1 where loc='$loc' && (bg='A+' or bg='B+') ";
				
			//$query="select * from registration where loc='$loc'&& bloodgroup='$blood' and ldb<DATE_ADD(DATE_ADD(NOW(),INTERVAL -3 MONTH),INTERVAL -0 DAY) ";
//$a=$_SESSION['username'];
//$b=$_SESSION['recpname'];

			$result=mysqli_query($con,$query) or die(mysqli_error($con));
			 if(mysqli_num_rows($result) > 0)  
                {

				echo "<table>";
				
			
				echo "<tr><td>Name</td><td>email</td><td>mobilenumber</td><td>Blood group</td></tr>";
			
				 while($row = mysqli_fetch_array($result))  
                     { 
						$username=$row['firstname'];
						$email=$row['email'];
						$mobile=$row['mobileno'];
						$blood=$row['bloodgroup'];
						echo "<tr><td>$username</td><td>$email</td><td>$mobile</td><td>$blood</td></tr>";
                  }
					 echo "</table>";
				
	}
	//else{
		//echo '<script type="text/javascript"> alert("No Donors available")</script>';
		//}
		}
			
       ?> 
	    </div>
</div>
	   </body>
	   </html>