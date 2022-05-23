<!DOCTYPE html>
<html lang="en">
  <head>
	  <title>Data Leakage Detection</title>
	  <meta charset="utf-8" />
	
	  <link rel="stylesheet" href="stylesheet.css" type="text/css" />
	  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  
    <script type="text/javascript">
      
      function valid() {
        var aa=document.s.uname.value;
        if(aa=="")  {
          alert("Enter Name");
          document.s.uname.focus();
          return false;
        }

        var a=document.s.uid.value;
        if(a=="") {
          alert("Enter User ID");
          document.s.uid.focus();
          return false;
        }
      
        var b=document.s.pass.value;
        if(b=="") {
          alert("Enter Password");
          document.s.pass.focus();
          return false;
        }
	      
	var emailfilter=/^\w+[\+\.\w-]*@([\w-]+\.)*\w+[\w-]*\.([a-z]{2,4}|\d+)$/i;
        var m=emailfilter.test(document.s.email.value);
        if(m==false) {
          alert("Please enter a valid Email Id");
          document.s.email.focus();
          return false;
        }

      }
    </script>
  </head>

<body class="body">
	
	<header class="mainHeader">
		<nav><ul>
			<li ><a href="index.php">Home</a></li>
			<li class="active"><a href="register1.php">Registration</a></li>
			<li ><a href="userlogin.php">UserLogin</a></li>
			<li><a href="adminlogin.php">AdminLogin</a></li>			
	</ul></nav>
	</header>
		
	<div class="mainContent1">
		<div class="content">	
				<article class="topcontent1">	
					<header>
						<h2><a href="#" rel="bookmark" title="Permalink to this POST TITLE">Registration</a></h2>
					</header>
                
      <div class="box">
        <p> <!--action="register.php"-->		  
          <form name="s" action="register.php" method="POST" onsubmit="return valid()">
            <table align="center" cellpadding="" cellspacing="" width="">
              <tr> 
                <td colspan="2" align="center"><font size="2"><b></b></font></td>
              </tr>
              <tr> 
                <td><font face="Courier New" size="+1"><strong>Name</strong></font></td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="uname" id="uname" class="b"></td>
              </tr>
              <tr> 
                <td><font face="Courier New" size="+1"><strong>User ID</strong></font></td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="uid" id="uid"class="b"></td>
              </tr>
              <tr> 
                <td><font face="Courier New" size="+1"><strong>Password</strong></font></td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp; <input type="password" name="pass" id="pass"class="b"></td>
              </tr>
                <tr> 
                <td><font face="Courier New" size="+1"><strong>Email ID</strong></font></td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="email" id="email"class="b"></td>
              </tr>
                <td></td>
                <td><input type="submit" name="s" value="submit" class="b1" > 
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                  <input type="reset" name="r" value="clear" class="b1"></td>
              </tr>
            </table>
          </form>
        </div>
      </p>
		</content>
	</article>
  </div>
			
</div>
	
	<footer class="mainFooter">
		<p>CSE3502 Project </p>
	</footer>

</body>
</html>
