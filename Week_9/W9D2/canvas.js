function drawCanvas(){
    document.addEventListener("DOMContentLoaded", function(){
        const mainColor = "black";
        const secondaryColor = "#181818";
    
        const canvasEl = document.getElementById("canvas");
        canvasEl.width = 1000;
        canvasEl.height = 1000;
        const ctx = canvasEl.getContext('2d');
    
        // Draw rectangle
        ctx.fillStyle = mainColor;
        ctx.rect(50, 50, 500, 500);
        ctx.fill();
    
    
        ctx.fillStyle = secondaryColor;
        ctx.strokeStyle = mainColor;
        ctx.lineWidth = 20;
        ctx.beginPath();
        ctx.arc(450, 450, 200, 0, 2 * Math.PI);
        ctx.fill();
        ctx.stroke();
    });
}

module.exports = {
    drawCanvas
}