// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require foundation
//= require_tree .

$(function(){ $(document).foundation(); });

$(document).ready(function(){
	
	$basePrice = $("#product_base_price");
	$afterTaxPrice = $("#product_after_tax_price");
	$wholesalePrice = $("#product_wholesale_price");
	$retailPrice = $("#product_retail_price");


	$basePrice.on('keyup', function(){
		var basePrice, afterTaxPrice, wholesalePrice, retailPrice;
		basePrice = $(this).val();
		if ( isNaN(parseInt(basePrice)) && (basePrice !== '') ){
			alert("Ingresa un numero valido");
		}  else {

			afterTaxPrice = basePrice * 1.19;
			wholesalePrice = afterTaxPrice * 1.50;
			retailPrice = afterTaxPrice * 2;

			$afterTaxPrice.val(afterTaxPrice);
			$wholesalePrice.val(wholesalePrice);
			$retailPrice.val(retailPrice);
			
		}
	});
});