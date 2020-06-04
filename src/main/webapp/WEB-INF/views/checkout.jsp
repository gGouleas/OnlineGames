<!DOCTYPE html>
<html>

<head>
  <meta charset="UTF-8">
  <title>Check Out</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="${contextPath}/resources/css/about-us.css">
</head>

<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <style>
    * {
      box-sizing: border-box;
    }

    body {
      background-color: #f1f1f1;
      padding: 20px;
      font-family: Arial;
      background-image: url("../img/photo2.jpg");
    }

    /* Center website */
    .main {
      max-width: 1000px;
      margin: auto;
    }

    h1 {
      font-size: 25px;
      word-break: break-all;
      color: gold;
    }

    h2 {
      color: gold;
      font-size: 50px;
    }

    .row {
      margin: 10px -16px;
    }

    /* Add padding BETWEEN each column */
    .row,
    .row>.column {
      padding: 8px;
    }

    /* Create three equal columns that floats next to each other */
    .column {
      float: left;
      width: 33.33%;
      display: none;
      /* Hide all elements by default */
    }

    /* Clear floats after rows */
    .row:after {
      content: "";
      display: table;
      clear: both;
    }

    /* Content */
    .content {
      background-color: white;
      padding: 10px;
      box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
      max-width: 300px;
      margin: auto;
      text-align: center;
      font-family: arial;
    }

    /* The "show" class is added to the filtered elements */
    .show {
      display: block;
    }

    /* Style the buttons */
    .btn {
      border: none;
      outline: none;
      padding: 12px 16px;
      background-color: yellow;
      cursor: pointer;
    }

    .btn:hover {
      background-color: #ddd;
    }

    .btn.active {
      background-color: #666;
      color: white;
    }

    .price {
      color: red;
      font-size: 50px;
    }

    .card button {
      border: none;
      outline: 0;
      padding: 12px;
      color: rgb(235, 53, 53);
      background-color: #000;
      text-align: center;
      cursor: pointer;
      width: 100%;
      font-size: 18px;
    }

    .card button:hover {
      opacity: 0.7;
    }

    .vertical-center {
      display: block;
      width: 100%;
      border: none;
      background-color: #4CAF50;
      padding: 14px 28px;
      font-size: 23px;
      cursor: pointer;
      text-align: center;
      color: gold;
    }
  </style>
</head>

<body>

  <!-- MAIN (Center website) -->
  <div class="main">



    <h2>NOOB ONLINE SHOP</h2>

    <div id="myBtnContainer">
      <button class="btn active" onclick="filterSelection('all')"> Show all</button>
      <button class="btn" onclick="filterSelection('Under 1 year subcription')"> Under 1 year subcription</button>
      <button class="btn" onclick="filterSelection('Over 1 year subcription')"> Over 1 year subcription</button>

    </div>

    <!-- Portfolio Gallery Grid -->
    <div class="row">
      <div class="column Under 1 year subcription">
        <div class="content">
          <h1>1 month subscription</h1>
          <p class="price">$5.99</p>
          <form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_top">
            <input type="hidden" name="cmd" value="_xclick-subscriptions">
            <input type="hidden" name="business" value="noobgames819@gmail.com">
            <input type="hidden" name="lc" value="US">
            <input type="hidden" name="item_name" value="Subscription">
            <input type="hidden" name="no_note" value="1">
            <input type="hidden" name="a1" value="0.00">
            <input type="hidden" name="p1" value="1">
            <input type="hidden" name="t1" value="M">
            <input type="hidden" name="src" value="1">
            <input type="hidden" name="a3" value="5.99">
            <input type="hidden" name="p3" value="12">
            <input type="hidden" name="t3" value="M">
            <input type="hidden" name="currency_code" value="EUR">
            <input type="hidden" name="bn" value="PP-SubscriptionsBF:btn_subscribeCC_LG.gif:NonHostedGuest">
            <input type="image" src="https://www.paypalobjects.com/en_US/i/btn/btn_subscribeCC_LG.gif" border="0" name="submit" alt="PayPal - The safer, easier way to pay online!">
            <img alt="" border="0" src="https://www.paypalobjects.com/en_US/i/scr/pixel.gif" width="1" height="1">
            </form>
        </div>
      </div>



      <div class="column Under 1 year subcription">
        <div class="content">
          <h1>3 months subscription</h1>
          <p class="price">$11.99</p>
          <form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_top">
            <input type="hidden" name="cmd" value="_xclick-subscriptions">
            <input type="hidden" name="business" value="noobgames819@gmail.com">
            <input type="hidden" name="lc" value="US">
            <input type="hidden" name="item_name" value="Subscription">
            <input type="hidden" name="no_note" value="1">
            <input type="hidden" name="a1" value="0.00">
            <input type="hidden" name="p1" value="1">
            <input type="hidden" name="t1" value="M">
            <input type="hidden" name="src" value="1">
            <input type="hidden" name="a3" value="11.99">
            <input type="hidden" name="p3" value="12">
            <input type="hidden" name="t3" value="M">
            <input type="hidden" name="currency_code" value="EUR">
            <input type="hidden" name="bn" value="PP-SubscriptionsBF:btn_subscribeCC_LG.gif:NonHostedGuest">
            <input type="image" src="https://www.paypalobjects.com/en_US/i/btn/btn_subscribeCC_LG.gif" border="0" name="submit" alt="PayPal - The safer, easier way to pay online!">
            <img alt="" border="0" src="https://www.paypalobjects.com/en_US/i/scr/pixel.gif" width="1" height="1">
            </form>
        </div>
      </div>



      <div class="column Under 1 year subcription">
        <div class="content">
          <h1>6 months subscription</h1>
          <p class="price">$19.99</p>
          <form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_top">
            <input type="hidden" name="cmd" value="_xclick-subscriptions">
            <input type="hidden" name="business" value="noobgames819@gmail.com">
            <input type="hidden" name="lc" value="US">
            <input type="hidden" name="item_name" value="Subscription">
            <input type="hidden" name="no_note" value="1">
            <input type="hidden" name="a1" value="0.00">
            <input type="hidden" name="p1" value="1">
            <input type="hidden" name="t1" value="M">
            <input type="hidden" name="src" value="1">
            <input type="hidden" name="a3" value="19.99">
            <input type="hidden" name="p3" value="12">
            <input type="hidden" name="t3" value="M">
            <input type="hidden" name="currency_code" value="EUR">
            <input type="hidden" name="bn" value="PP-SubscriptionsBF:btn_subscribeCC_LG.gif:NonHostedGuest">
            <input type="image" src="https://www.paypalobjects.com/en_US/i/btn/btn_subscribeCC_LG.gif" border="0" name="submit" alt="PayPal - The safer, easier way to pay online!">
            <img alt="" border="0" src="https://www.paypalobjects.com/en_US/i/scr/pixel.gif" width="1" height="1">
            </form>
        </div>
      </div>



      <div class="column Over 1 year subcription">
        <div class="content">
          <h1>1 year subscription</h1>
          <p class="price">$29.99</p>
          <form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_top">
            <input type="hidden" name="cmd" value="_xclick-subscriptions">
            <input type="hidden" name="business" value="noobgames819@gmail.com">
            <input type="hidden" name="lc" value="US">
            <input type="hidden" name="item_name" value="Subscription">
            <input type="hidden" name="no_note" value="1">
            <input type="hidden" name="a1" value="0.00">
            <input type="hidden" name="p1" value="1">
            <input type="hidden" name="t1" value="M">
            <input type="hidden" name="src" value="1">
            <input type="hidden" name="a3" value="29.99">
            <input type="hidden" name="p3" value="12">
            <input type="hidden" name="t3" value="M">
            <input type="hidden" name="currency_code" value="EUR">
            <input type="hidden" name="bn" value="PP-SubscriptionsBF:btn_subscribeCC_LG.gif:NonHostedGuest">
            <input type="image" src="https://www.paypalobjects.com/en_US/i/btn/btn_subscribeCC_LG.gif" border="0" name="submit" alt="PayPal - The safer, easier way to pay online!">
            <img alt="" border="0" src="https://www.paypalobjects.com/en_US/i/scr/pixel.gif" width="1" height="1">
            </form>
        </div>
      </div>



      <div class="column Over 1 year subcription">
        <div class="content">
          <h1>2 years subscription</h1>
          <p class="price">$39.99</p>
          <form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_top">
            <input type="hidden" name="cmd" value="_xclick-subscriptions">
            <input type="hidden" name="business" value="noobgames819@gmail.com">
            <input type="hidden" name="lc" value="US">
            <input type="hidden" name="item_name" value="Subscription">
            <input type="hidden" name="no_note" value="1">
            <input type="hidden" name="a1" value="0.00">
            <input type="hidden" name="p1" value="1">
            <input type="hidden" name="t1" value="M">
            <input type="hidden" name="src" value="1">
            <input type="hidden" name="a3" value="39.99">
            <input type="hidden" name="p3" value="12">
            <input type="hidden" name="t3" value="M">
            <input type="hidden" name="currency_code" value="EUR">
            <input type="hidden" name="bn" value="PP-SubscriptionsBF:btn_subscribeCC_LG.gif:NonHostedGuest">
            <input type="image" src="https://www.paypalobjects.com/en_US/i/btn/btn_subscribeCC_LG.gif" border="0" name="submit" alt="PayPal - The safer, easier way to pay online!">
            <img alt="" border="0" src="https://www.paypalobjects.com/en_US/i/scr/pixel.gif" width="1" height="1">
            </form>
        </div>
      </div>



      <div class="column Over 1 year subcription">
        <div class="content">
          <h1>5 years subscription</h1>
          <p class="price">$69.99</p>
           <form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_top">
            <input type="hidden" name="cmd" value="_xclick-subscriptions">
            <input type="hidden" name="business" value="noobgames819@gmail.com">
            <input type="hidden" name="lc" value="US">
            <input type="hidden" name="item_name" value="Subscription">
            <input type="hidden" name="no_note" value="1">
            <input type="hidden" name="a1" value="0.00">
            <input type="hidden" name="p1" value="1">
            <input type="hidden" name="t1" value="M">
            <input type="hidden" name="src" value="1">
            <input type="hidden" name="a3" value="69.99">
            <input type="hidden" name="p3" value="12">
            <input type="hidden" name="t3" value="M">
            <input type="hidden" name="currency_code" value="EUR">
            <input type="hidden" name="bn" value="PP-SubscriptionsBF:btn_subscribeCC_LG.gif:NonHostedGuest">
            <input type="image" src="https://www.paypalobjects.com/en_US/i/btn/btn_subscribeCC_LG.gif" border="0" name="submit" alt="PayPal - The safer, easier way to pay online!">
            <img alt="" border="0" src="https://www.paypalobjects.com/en_US/i/scr/pixel.gif" width="1" height="1">
            </form>
        </div>
      </div>

      <!-- END GRID -->
    </div>

    <!-- END MAIN -->
  </div>
  <h3><a class="back" href="main">Return to main page</a></h3>
  <script>
    filterSelection("all")
    function filterSelection(c) {
      var x, i;
      x = document.getElementsByClassName("column");
      if (c == "all") c = "";
      for (i = 0; i < x.length; i++) {
        w3RemoveClass(x[i], "show");
        if (x[i].className.indexOf(c) > -1) w3AddClass(x[i], "show");
      }
    }

    function w3AddClass(element, name) {
      var i, arr1, arr2;
      arr1 = element.className.split(" ");
      arr2 = name.split(" ");
      for (i = 0; i < arr2.length; i++) {
        if (arr1.indexOf(arr2[i]) == -1) { element.className += " " + arr2[i]; }
      }
    }

    function w3RemoveClass(element, name) {
      var i, arr1, arr2;
      arr1 = element.className.split(" ");
      arr2 = name.split(" ");
      for (i = 0; i < arr2.length; i++) {
        while (arr1.indexOf(arr2[i]) > -1) {
          arr1.splice(arr1.indexOf(arr2[i]), 1);
        }
      }
      element.className = arr1.join(" ");
    }


    // Add active class to the current button (highlight it)
    var btnContainer = document.getElementById("myBtnContainer");
    var btns = btnContainer.getElementsByClassName("btn");
    for (var i = 0; i < btns.length; i++) {
      btns[i].addEventListener("click", function () {
        var current = document.getElementsByClassName("active");
        current[0].className = current[0].className.replace(" active", "");
        this.className += " active";
      });
    }
  </script>

</body>

</html>