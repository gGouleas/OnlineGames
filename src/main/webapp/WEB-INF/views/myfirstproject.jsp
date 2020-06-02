<!DOCTYPE html>
<html>
<head>
<style>
* {
  box-sizing: border-box;
}

.column {
  position: relative;
  float: left;
  width:20%;  /* Αυτό αλλάζει τον αριθμό των εικονιδίων σε μία γραμμή πχ 25% για 4 εικονίδια  */
  padding: 5px;
}

.image {
  display: block;
  width: 100%;
  height: auto;
}

.overlay {
  position: absolute;
  bottom: 0;
  left: 0;
  right: 0;
  background-position: center;
  background-image: url(https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSO20mXdkLqqLKw5Id3XcwfpFqqZz22FPmB8HYKUm-yo2IquAws&usqp=CAU);
  overflow: hidden;
  width: 100%;
  height: 0;
  transition: .5s ease;
}

.column:hover .overlay {
  height: 100%;
}

.text {
  white-space: nowrap; 
  color: rgb(6, 41, 33);
  font-size: 20px;
  font-family: "Lucida Console", Courier, monospace;
  position: absolute;
  overflow: hidden;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%);
}

/* Clearfix (clear floats) */
.row::after {
  content: "";
  clear: both;
  display: table;
}
</style>
</head>
<body>


<div class="row">

<div class="column">
  <img src="https://www.tnad.at/wp-content/uploads/2016/04/url_shorteners.png" alt="Avatar" class="image" style="width:100%">
  <div class="overlay">
    <div class="text">Please login to play</div>
  </div>
</div>

<div class="column">
  <img src="https://www.tnad.at/wp-content/uploads/2016/04/url_shorteners.png" alt="Avatar" class="image" style="width:100%">
  <div class="overlay">
    <div class="text">Please login to play</div>
  </div>
</div>

<div class="column">
  <img src="https://www.tnad.at/wp-content/uploads/2016/04/url_shorteners.png" alt="Avatar" class="image" style="width:100%">
  <div class="overlay">
    <div class="text">Please login to play</div>
  </div>
</div>

<div class="column">
    <img src="https://www.tnad.at/wp-content/uploads/2016/04/url_shorteners.png" alt="Avatar" class="image" style="width:100%">
    <div class="overlay">
      <div class="text">Please login to play</div>
    </div>
  </div>

  <div class="column">
    <img src="https://www.tnad.at/wp-content/uploads/2016/04/url_shorteners.png" alt="Avatar" class="image" style="width:100%">
    <div class="overlay">
      <div class="text">Please login to play</div>
    </div>
  </div>

  <div class="column">
    <img src="https://www.tnad.at/wp-content/uploads/2016/04/url_shorteners.png" alt="Avatar" class="image" style="width:100%">
    <div class="overlay">
      <div class="text">Please login to play</div>
    </div>
  </div>

</div>

</body>
