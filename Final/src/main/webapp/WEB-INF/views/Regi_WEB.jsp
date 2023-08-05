<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" href="css/style.css">
  <link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet">
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Info_page_PJM</title>
  <style> 
   #menu {
      margin: 0;
      background-color: #E1BEE7;
      font-size: 16px;
      font-family: Tahoma, Geneva, sans-serif;
      font-weight: bold;
      text-align: left;
      padding: 8px;
      border-radius: 8px;
      -webkit-border-radius: 8px;
      -moz-border-radius: 8px;
      -o-border-radius: 8px;
      display: flex;
      justify-content: space-between;
      align-items: center;
      padding: 0 16px;
      margin-bottom: 1cm; /* 간격 조절 */
    }
    
    #menu ul {
      margin: 0;
      padding: 8px 0;
      list-style: none;
      height: auto;
      display: flex;
    }
    
    #menu li {
      display: block;
      padding: 8px;
      margin-right: 8cm; /* 간격 조절  (Home, My, Settings 간격 조절해주는 코드) */ 
    }
    
    #menu a {
      color: #FFF;
      padding: 10px;
      text-decoration: none;
    }
    
    #menu a:hover {
      background-color: #1B191B;
      color: #FFF;
      border-radius: 20px;
      -webkit-border-radius: 20px;
      -moz-border-radius: 20px;
      -o-border-radius: 20px;
    }
    
    #menu li .active {
      background-color: #1B191B;
      color: #FFF;
      border-radius: 20px;
      -webkit-border-radius: 20px;
      -moz-border-radius: 20px;
      -o-border-radius: 20px;
    }
    
    .logo {
 /*     text-align: right;
      margin-right: 10cm;  */ /* 간격 조절 */

      text-align: center;
      margin-right: auto;
      margin-left: auto;
      width: 50%;
    }

      .forgot a {
        white-space: pre;
      }

/* --------------------------------------------------------------------------------*/

body {
      background-color: #F3EBF6;
      font-family: 'Ubuntu', sans-serif;
      margin: 0;
      padding: 0;
    }

/* ------------------------------------------------------------------------------ */


.joinForm {
  /*  position:absolute;
    width:500px;
    height:700px;
    padding: 30px, 20px;
    background-color:#FFFFFF;
    text-align:center;
    top:75%;
    left:50%;
    transform: translate(-50%,-50%);
    border-radius: 15px;
   */
  /* 
   position: absolute;
  width: 80%;
  height: auto;
  padding: 30px;
  background-color: #FFFFFF;
  text-align: center;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  border-radius: 15px; */
  position: absolute;
  width: 100%;
  height: 100%;
  max-width: 350px;
  max-height: 600px;
  padding: 30px;
  background-color: #FFFFFF;
  text-align: center;
  top: calc(50% + 1cm); /* 변경된 부분: 10cm에서 5cm로 변경 */
  left: 50%;
  transform: translate(-50%, -50%);
  border-radius: 15px;

  }
  
  .joinForm h2 {
    text-align: center;
    margin: 30px;
    color: #8C55AA;
  }
  
  .textForm {
    border-bottom: 2px solid #adadad;
  margin-bottom: 20px;
  padding: 10px 10px;
  }

  .container {
    display: flex;
  }

  .item{
    margin-right:10px;
    flex-basis: auto;
    flex-grow: 1;
  }
  
.id,
.pw,
.name,
.email,
.phone {
  width: 100%;
  border: none;
  outline: none;
  color: #636e72;
  font-size: 16px;
  height: 25px;
  background: none;
  font-weight: bold;
}
.pw2{
    width: 100%;
  border: none;
  outline: none;
  color: #636e72;
  font-size: 16px;
  height: 25px;
  background: none;
  font-weight: bold;
}
  .btn {
    margin-bottom: 40px;
  margin-top: 20px;
  width: 80%;
  height: 40px;
  box-shadow: 0 0 20px 1px rgba(0, 0, 0, 0.04);
  background: linear-gradient(to right, #9C27B0, #E040FB);
  background-position: left;
  background-size: 200%;
  color: white;
  font-weight: bold;
  border: none;
  cursor: pointer;
  transition: 0.4s;
  display: inline;
  border-radius: 5em;
  width: 100%;
  }
  .btn2 {
    margin-bottom: 40px;
  margin-top: 20px;
  width: 80%;
  height: 40px;
  box-shadow: 0 0 20px 1px rgba(0, 0, 0, 0.04);
  background: linear-gradient(to right, #9C27B0, #E040FB);
  background-position: left;
  background-size: 200%;
  color: white;
  font-weight: bold;
  border: none;
  cursor: pointer;
  transition: 0.4s;
  display: inline;
  border-radius: 5em;
  width: 50%;
  }

</style>
</head>

<body>
    
    <div id="menu">
      <div class="logo"></div>
      <ul>
        <li><a href="#" >Home</a></li> <!--class="active"-->
        <li><a href="#">My</a></li>
        <li><a href="#">Settings</a></li>
      </ul>
    </div>

    <form action="join" method="POST" class="joinForm" onsubmit="DoJoinForm__submit(this); return false;">
        <h2>Register</h2>

       <div class="container">
        <div class="item">
            <div class="textForm">
                <input name="id" type="text" class="id" placeholder="ID">         </div>
        </div>
        <div class="item"></div>
        <input type="submit" class="btn2" value="CONFIRM"/>
    </div>
    </div>

        <div class="container">
            <div class="item">
                <div class="textForm">
                    <input name="pw" type="password" class="pw" placeholder="PW" id="loginPwInput">
                </div>
            </div>
            <div class="item"></div>
            <input type="submit" class="btn2" value="CONFIRM"/>
        </div>
        </div>

        <div class="textForm">
          <input name="name" type="text" class="name" placeholder="Name">
        </div>
        <div class="textForm">
          <input name="email" type="text" class="email" placeholder="Email">
        </div>
        <div class="textForm">
          <input name="phone" type="number" class="phone" placeholder="Phone">
        </div>
        <input type="submit" class="btn" value="J O I N"/>
      </form>
</body>
</html>