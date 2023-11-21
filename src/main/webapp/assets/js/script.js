/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/ClientSide/javascript.js to edit this template
 */

// next banner
const counter = 1;
setInterval(function(){
    document.getElementById('radio' + counter).checked = true;
    counter++;
    if(counter > 4){
        counter = 1;
    }
}, 4000);


// overlay hidden
const product = document.querySelector(".navbar-item-active .hidden-item-active");
product.addEventListener("mouseenter",function(){
    document.querySelector(".overlay").classList.remove("hidden");
});

product.addEventListener("mouseleave",function(){
    document.querySelector(".overlay").classList.add("hidden");
});
