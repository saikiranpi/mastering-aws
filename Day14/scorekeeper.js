// var colors = [
//     "rgb(0, 0, 255)",
//     "rgb(0, 255, 0)",
//     "rgb(255, 0, 0)",
//     "rgb(255, 0, 255)",
//     "rgb(0, 255, 255)",
//     "rgb(255, 255, 0)",
//]

var colors = generateRandomNumber(6);

var squares = document.querySelectorAll(".square");
var rgb = document.querySelector("#rgb");
var try1 = document.querySelector("#try1");
pickedColor = pickedColor();
for(var i=0; i<squares.length;i++){
    squares[i].style.background = colors[i];

    squares[i].addEventListener("click", function(){
        var clickedColor = this.style.background;
        if(clickedColor == pickedColor){
            console.log("RIGHT")
            try1.textContent = "Correct"
            for(var i=0; i<squares.length;i++){
                squares[i].style.background = pickedColor;
        }
        rgb.textContent = pickedColor;
    }
        else {
            this.style.background = "#232323";
            try1.textContent = "Worng.Try Again..!!"

        }
    });
}
function pickedColor(){
    randomnum = Math.floor(Math.random()*6)
    return colors[randomnum]
}

function generateRandomNumber(num){
    arr= [];
    for (var i=0;i<num;i++){
        randomnumbers();
        arr.push(randomnumbers());
    }
    return arr;
}

function randomnumbers(){
    var red = Math.floor(Math.random()*256);
    var green = Math.floor(Math.random()*256);
    var blue = Math.floor(Math.random()*256);

    return "rgb("+red+", "+green+", "+blue+")"
}
