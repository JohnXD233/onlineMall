<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="com.demo.bean.User"%>
<%@page import="java.util.*" %>
<!DOCTYPE HTML>
<html>
<head>
<title>Tuxedos</title>
<!--main tuxedo css-->
<link  rel="stylesheet" type="text/css"  media="all" href="css/tuxedo/tuxedo1.min.css" />
<link  rel="stylesheet" type="text/css"  media="screen and (min-width: 768px)" href="css/tuxedo/styles-l.min.css" />
<link  rel="stylesheet" type="text/css"  media="print" href="css/tuxedo/print.min.css" />
<link  rel="stylesheet" type="text/css"  media="all" href="css/tuxedo/font-awesome.min.css" />


<!--tuxedo-->

<!--***************目标网页结构改变后的头部*****************-->
<link rel="canonical" href="https://www.buy4lesstuxedo.com/pages/tuxedos"><link rel="shortcut icon" href="//cdn.shopify.com/s/files/1/0068/8511/3913/files/b4lt-icon_32x32.jpg?v=1532707135" type="image/png"><title>Tuxedos - Buy4LessTuxedo.com</title><meta name="description" content="Buy4LessTuxedo has a variety of tuxedos for sale. To learn more about how to buy our tuxedos, visit our site today!">
<link href="//cdn.shopify.com/s/files/1/0068/8511/3913/t/27/assets/theme.scss.css?13723381927346793203" rel="stylesheet" type="text/css" media="all" />
 
<link href="//fonts.googleapis.com/css?family=Work+Sans:400,700" rel="stylesheet" type="text/css" media="all" />
<link href="//fonts.googleapis.com/css?family=Work+Sans:600" rel="stylesheet" type="text/css" media="all" />

  <!--<script>
    var theme = {
      strings: {
        addToCart: "Add to cart",
        soldOut: "Sold out",
        unavailable: "Unavailable",
        showMore: "Show More",
        showLess: "Show Less",
        addressError: "Error looking up that address",
        addressNoResults: "No results for that address",
        addressQueryLimit: "You have exceeded the Google API usage limit. Consider upgrading to a \u003ca href=\"https:\/\/developers.google.com\/maps\/premium\/usage-limits\"\u003ePremium Plan\u003c\/a\u003e.",
        authError: "There was a problem authenticating your Google Maps account."
      },
      moneyFormat: "${{amount}}"
    }

    document.documentElement.className = document.documentElement.className.replace('no-js', 'js');
  </script>-->
  <style media="all">.additional-checkout-button{border:0 !important;border-radius:5px !important;display:inline-block;margin:0 0 10px;padding:0 24px !important;max-width:100%;min-width:150px !important;line-height:44px !important;text-align:center !important}.additional-checkout-button+.additional-checkout-button{margin-left:10px}.additional-checkout-button:last-child{margin-bottom:0}.additional-checkout-button span{font-size:14px !important}.additional-checkout-button img{display:inline-block !important;height:1.3em !important;margin:0 !important;vertical-align:middle !important;width:auto !important}@media (max-width: 500px){.additional-checkout-button{display:block;margin-left:0 !important;padding:0 10px !important;width:100%}}.additional-checkout-button--apple-pay{background-color:#000 !important;color:#fff !important;display:none;font-family:-apple-system, &#39;Helvetica Neue&#39;, sans-serif !important;min-width:150px !important;white-space:nowrap !important}.additional-checkout-button--apple-pay:hover,.additional-checkout-button--apple-pay:active,.additional-checkout-button--apple-pay:visited{color:#fff !important;text-decoration:none !important}.additional-checkout-button--apple-pay .additional-checkout-button__logo{background:-webkit-named-image(apple-pay-logo-white) center center no-repeat !important;background-size:auto 100% !important;display:inline-block !important;vertical-align:middle !important;width:3em !important;height:1.3em !important}@media (max-width: 500px){.additional-checkout-button--apple-pay{display:none}}.additional-checkout-button--google-pay{line-height:0 !important;padding:0 !important;border-radius:unset !important;width:80px !important}@media (max-width: 500px){.additional-checkout-button--google-pay{width:100% !important}}.gpay-iframe{height:44px !important;width:100%  !important;cursor:pointer;vertical-align:middle !important}.additional-checkout-button--paypal-express{background-color:#ffc439 !important}.additional-checkout-button--paypal{vertical-align:top;line-height:0 !important;padding:0 !important}.additional-checkout-button--amazon{background-color:#fad676 !important;position:relative !important}.additional-checkout-button--amazon .additional-checkout-button__logo{-webkit-transform:translateY(4px) !important;transform:translateY(4px) !important}.additional-checkout-button--amazon .alt-payment-list-amazon-button-image{max-height:none !important;opacity:0 !important;position:absolute !important;top:0 !important;left:0 !important;width:100% !important;height:100% !important}.additional-checkout-button-visually-hidden{border:0 !important;clip:rect(0, 0, 0, 0) !important;clip:rect(0 0 0 0) !important;width:1px !important;height:1px !important;margin:-2px !important;overflow:hidden !important;padding:0 !important;position:absolute !important}
</style>
<style>.shopify-payment-button__button--hidden {
  visibility: hidden;
}

.shopify-payment-button__button {
  border-radius: 4px;
  border: none;
  box-shadow: 0 0 0 0 transparent;
  color: white;
  cursor: pointer;
  display: block;
  font-size: 1em;
  font-weight: 500;
  line-height: 1;
  text-align: center;
  width: 100%;
  transition: background 0.2s ease-in-out;
}

.shopify-payment-button__button[disabled] {
  opacity: 0.6;
  cursor: default;
}

.shopify-payment-button__button--unbranded {
  background-color: #1990c6;
  padding: 1em 2em;
}

.shopify-payment-button__button--unbranded:hover:not([disabled]) {
  background-color: #136f99;
}

.shopify-payment-button__more-options {
  background: transparent;
  border: 0 none;
  cursor: pointer;
  display: block;
  font-size: 1em;
  margin-top: 1em;
  text-align: center;
  width: 100%;
}

.shopify-payment-button__more-options:hover:not([disabled]) {
  text-decoration: underline;
}

.shopify-payment-button__more-options[disabled] {
  opacity: 0.6;
  cursor: default;
}

.shopify-payment-button__button--branded {
  display: flex;
  flex-direction: column;
  min-height: 44px;
  position: relative;
  z-index: 1;
}

.shopify-payment-button__button--branded .shopify-cleanslate {
  flex: 1 !important;
  display: flex !important;
  flex-direction: column !important;
}
</style>
<script id="apple-pay-shop-capabilities" type="application/json">{"shopId":6885113913,"countryCode":"US","currencyCode":"USD","merchantCapabilities":["supports3DS"],"merchantId":"gid:\/\/shopify\/Shop\/6885113913","merchantName":"Buy4LessTuxedo.com","requiredBillingContactFields":["postalAddress","email","phone"],"requiredShippingContactFields":["postalAddress","email","phone"],"shippingType":"shipping","supportedNetworks":["visa","masterCard","amex","discover"],"total":{"type":"pending","label":"Buy4LessTuxedo.com","amount":"1.00"}}</script>
<script id="shopify-features" type="application/json">{"accessToken":"d2c7592d23ac769b960f14d644ea5bb6","betas":[],"domain":"www.buy4lesstuxedo.com","shopId":6885113913,"smart_payment_buttons_url":"https:\/\/cdn.shopifycloud.com\/payment-sheet\/assets\/latest\/spb.js"}</script>
<script>var Shopify = Shopify || {};
Shopify.shop = "buy4lesstuxedo.myshopify.com";
Shopify.currency = {"active":"USD"};
Shopify.theme = {"name":"Debut - 2018\/July\/13","id":31099486265,"theme_store_id":796,"role":"main"};
Shopify.theme.handle = "null";
Shopify.theme.style = {"id":null,"handle":null};</script>
<script>window.ShopifyPay = window.ShopifyPay || {};
window.ShopifyPay.canMakeAcceleratedPurchase = false;</script>
<script>(function() {
  function asyncLoad() {
    var urls = ["\/\/cdn.codeblackbelt.com\/js\/modules\/frequently-bought-together\/main.min.js?shop=buy4lesstuxedo.myshopify.com","https:\/\/cdn.getshogun.com\/pixel.js?v=5\u0026shop=buy4lesstuxedo.myshopify.com","\/\/cdn.codeblackbelt.com\/js\/modules\/frequently-bought-together\/main.min.js?shop=buy4lesstuxedo.myshopify.com","https:\/\/kiwishopapps.com\/web\/js\/dist\/kiwiSizing\/plugin\/SizingPlugin.prod.js?shop=buy4lesstuxedo.myshopify.com","https:\/\/load.csell.co\/assets\/js\/cross-sell.js?shop=buy4lesstuxedo.myshopify.com","https:\/\/load.csell.co\/assets\/v2\/js\/core\/xsell.js?shop=buy4lesstuxedo.myshopify.com","https:\/\/sdk.beeketing.com\/js\/beeketing.js?shop=buy4lesstuxedo.myshopify.com","https:\/\/assets1.adroll.com\/shopify\/latest\/j\/shopify_rolling_bootstrap.js?adroll_adv_id=LHDMWTGLG5GILE2P67ARGW\u0026adroll_pix_id=A5EUCP6KQZDTJN2FDU4I2V\u0026shop=buy4lesstuxedo.myshopify.com"];
    for (var i = 0; i < urls.length; i++) {
      var s = document.createElement('script');
      s.type = 'text/javascript';
      s.async = true;
      s.src = urls[i];
      var x = document.getElementsByTagName('script')[0];
      x.parentNode.insertBefore(s, x);
    }
  };
  if(window.attachEvent) {
    window.attachEvent('onload', asyncLoad);
  } else {
    window.addEventListener('load', asyncLoad, false);
  }
})();</script>
<script id="__st">var __st={"a":6885113913,"offset":-14400,"reqid":"f7a5ba0f-08dd-4cf5-8f95-fdbe0b646936","pageurl":"www.buy4lesstuxedo.com\/pages\/tuxedos","s":"pages-7391412281","u":"0fbf7ea95721","p":"page","rtyp":"page","rid":7391412281};</script>
<script>window.ShopifyPaypalV4VisibilityTracking = true;</script>
<script>window.Shopify = window.Shopify || {};
window.Shopify.Checkout = window.Shopify.Checkout || {};
window.Shopify.Checkout.apiHost = "buy4lesstuxedo.myshopify.com";</script>
<script>window.ShopifyAnalytics = window.ShopifyAnalytics || {};
window.ShopifyAnalytics.meta = window.ShopifyAnalytics.meta || {};
window.ShopifyAnalytics.meta.currency = 'USD';
var meta = {"page":{"pageType":"page","resourceType":"page","resourceId":7391412281}};
for (var attr in meta) {
  window.ShopifyAnalytics.meta[attr] = meta[attr];
}</script>
<script>window.ShopifyAnalytics.merchantGoogleAnalytics = function() {
  
};
</script>
<!--<script class="analytics">(window.gaDevIds=window.gaDevIds||[]).push('BwiEti');


(function () {
  var customDocumentWrite = function(content) {
    var jquery = null;

    if (window.jQuery) {
      jquery = window.jQuery;
    } else if (window.Checkout && window.Checkout.$) {
      jquery = window.Checkout.$;
    }

    if (jquery) {
      jquery('body').append(content);
    }
  };

  var trekkie = window.ShopifyAnalytics.lib = window.trekkie = window.trekkie || [];
  if (trekkie.integrations) {
    return;
  }
  trekkie.methods = [
    'identify',
    'page',
    'ready',
    'track',
    'trackForm',
    'trackLink'
  ];
  trekkie.factory = function(method) {
    return function() {
      var args = Array.prototype.slice.call(arguments);
      args.unshift(method);
      trekkie.push(args);
      return trekkie;
    };
  };
  for (var i = 0; i < trekkie.methods.length; i++) {
    var key = trekkie.methods[i];
    trekkie[key] = trekkie.factory(key);
  }
  trekkie.load = function(config) {
    trekkie.config = config;
    var script = document.createElement('script');
    script.type = 'text/javascript';
    script.onerror = function(e) {
      (new Image()).src = '//v.shopify.com/internal_errors/track?error=trekkie_load';
    };
    script.async = true;
    script.src = 'https://cdn.shopify.com/s/javascripts/tricorder/trekkie.storefront.min.js?v=2017.09.05.1';
    var first = document.getElementsByTagName('script')[0];
    first.parentNode.insertBefore(script, first);
  };
  trekkie.load(
    {"Trekkie":{"appName":"storefront","development":false,"defaultAttributes":{"shopId":6885113913,"isMerchantRequest":null,"themeId":31099486265,"themeCityHash":1350705727014130789}},"Performance":{"navigationTimingApiMeasurementsEnabled":true,"navigationTimingApiMeasurementsSampleRate":1.0},"Google Analytics":{"trackingId":"UA-1265091-2","domain":"auto","siteSpeedSampleRate":"10","enhancedEcommerce":true,"doubleClick":true,"includeSearch":true},"Session Attribution":{}}
  );

  var loaded = false;
  trekkie.ready(function() {
    if (loaded) return;
    loaded = true;

    window.ShopifyAnalytics.lib = window.trekkie;
    
      ga('require', 'linker');
      function addListener(element, type, callback) {
        if (element.addEventListener) {
          element.addEventListener(type, callback);
        }
        else if (element.attachEvent) {
          element.attachEvent('on' + type, callback);
        }
      }
      function decorate(event) {
        event = event || window.event;
        var target = event.target || event.srcElement;
        if (target && (target.getAttribute('action') || target.getAttribute('href'))) {
          ga(function (tracker) {
            var linkerParam = tracker.get('linkerParam');
            document.cookie = '_shopify_ga=' + linkerParam + '; ' + 'path=/';
          });
        }
      }
      addListener(window, 'load', function(){
        for (var i=0; i < document.forms.length; i++) {
          var action = document.forms[i].getAttribute('action');
          if(action && action.indexOf('/cart') >= 0) {
            addListener(document.forms[i], 'submit', decorate);
          }
        }
        for (var i=0; i < document.links.length; i++) {
          var href = document.links[i].getAttribute('href');
          if(href && href.indexOf('/checkout') >= 0) {
            addListener(document.links[i], 'click', decorate);
          }
        }
      });
    

    var originalDocumentWrite = document.write;
    document.write = customDocumentWrite;
    try { window.ShopifyAnalytics.merchantGoogleAnalytics.call(this); } catch(error) {};
    document.write = originalDocumentWrite;

    
        window.ShopifyAnalytics.lib.page(
          null,
          {"pageType":"page","resourceType":"page","resourceId":7391412281}
        );
      
    
  });

  
      var eventsListenerScript = document.createElement('script');
      eventsListenerScript.async = true;
      eventsListenerScript.src = "//cdn.shopify.com/s/assets/shop_events_listener-f2c5800305098f0ebebdfa7d980c9abf56514c46d5305e97a7c476f7c9116163.js";
      document.getElementsByTagName('head')[0].appendChild(eventsListenerScript);
    
})();</script>
<script defer="defer" integrity="sha256-LxA9If03/QAyD0u+i83z9sifkcZrI6GOqV1MLPQoc98=" crossorigin="anonymous" src="//cdn.shopify.com/s/assets/storefront/express_buttons-2f103d21fd37fd00320f4bbe8bcdf3f6c89f91c66b23a18ea95d4c2cf42873df.js"></script>
<script defer="defer" integrity="sha256-NfqRkSQwKw0JfNupCky6Zxtoijw8YUA8km/3gYu7kY8=" crossorigin="anonymous" src="//cdn.shopify.com/s/assets/storefront/features-35fa919124302b0d097cdba90a4cba671b688a3c3c61403c926ff7818bbb918f.js"></script>
<script defer="defer" src="//cdn.shopify.com/s/assets/themes_support/ga_urchin_forms-68ca1924c495cfc55dac65f4853e0c9a395387ffedc8fe58e0f2e677f95d7f23.js"></script>
-->
  
  <link href="//cdn.shopify.com/s/files/1/0068/8511/3913/t/27/assets/panda-swatches.css?13723381927346793203" rel="stylesheet" type="text/css" media="all" />
  
 <link rel="stylesheet" type="text/css" href="https://cdn.getshogun.com/aca56285-56a9-4274-8e46-8679b14ccc9c-2.css" />
<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Work+Sans" />

  <link href="//cdn.shopify.com/s/files/1/0068/8511/3913/t/27/assets/theme-styles.css?13723381927346793203" rel="stylesheet" type="text/css" media="all" />
<!--begin-bc-sf-filter-css-->
  <link href="//cdn.shopify.com/s/files/1/0068/8511/3913/t/27/assets/bc-sf-filter.css?13723381927346793203" rel="stylesheet" type="text/css" media="all" />
<!--end-bc-sf-filter-css-->
  <!--<script>
window['_fs_debug'] = false;
window['_fs_host'] = 'fullstory.com';
window['_fs_org'] = 'E9F7N';
window['_fs_namespace'] = 'FS';
(function(m,n,e,t,l,o,g,y){
    if (e in m) {if(m.console && m.console.log) { m.console.log('FullStory namespace conflict. Please set window["_fs_namespace"].');} return;}
    g=m[e]=function(a,b){g.q?g.q.push([a,b]):g._api(a,b);};g.q=[];
    o=n.createElement(t);o.async=1;o.src='https://'+_fs_host+'/s/fs.js';
    y=n.getElementsByTagName(t)[0];y.parentNode.insertBefore(o,y);
    g.identify=function(i,v){g(l,{uid:i});if(v)g(l,v)};g.setUserVars=function(v){g(l,v)};g.event=function(i,v){g('event',{n:i,p:v})};
    g.shutdown=function(){g("rec",!1)};g.restart=function(){g("rec",!0)};
    g.consent=function(a){g("consent",!arguments.length||a)};
    g.identifyAccount=function(i,v){o='account';v=v||{};v.acctId=i;g(o,v)};
    g.clearUserCookie=function(){};
})(window,document,window['_fs_namespace'],'script','user');
</script>-->

<!--*************************************************-->

<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary JavaScript plugins) -->
<script type='text/javascript' src="js/jquery-1.11.1.min.js"></script>
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Gretong Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- <link href='http://fonts.useso.com/css?family=Roboto:400,100,300,500,700,900' rel='stylesheet' type='text/css'>
<link href='http://fonts.useso.com/css?family=Playfair+Display:400,700,900' rel='stylesheet' type='text/css'> -->
<!-- start menu -->
<link href="css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/megamenu.js"></script>
<script>$(document).ready(function(){$(".megamenu").megamenu();});</script>
<script src="js/menu_jquery.js"></script>
<script src="js/simpleCart.min.js"> </script>
</head>
<body class="page-products categorypath-tuxedos category-tuxedos catalog-category-view page-layout-1column">
<!-- header_top -->
<div class="top_bg">
	<div class="container">
		<div class="header_top">
			<div class="top_right">
				<ul>
					<li><a href="#">help</a></li>|
					<li><a href="contact.jsp">Contact</a></li>|
					<li><a href="#">Delivery information</a></li>
				</ul>
			</div>
			<div class="top_left">
				<h2><span></span> Call us : 032 2352 782</h2>
			</div>
				<div class="clearfix"> </div>
		</div>
	</div>
</div>
<!-- header -->
<div class="header_bg">
<div class="container">
	<div class="header">
	<div class="head-t">
		<div class="logo">
			<a href="index.jsp"><img src="images/logo.png" class="img-responsive" alt=""/> </a>
		</div>
		<!-- start header_right -->
		<div class="header_right">
			<div class="rgt-bottom">
				<div class="log">
					<div class="login" >
						<div id="loginContainer"><a href="#" id="loginButton"><span>Login</span></a>
						    <div id="loginBox">                
						        <form id="loginForm">
						                <fieldset id="body">
						                	<fieldset>
						                          <label for="email">Email Address</label>
						                          <input type="text" name="email" id="email">
						                    </fieldset>
						                    <fieldset>
						                            <label for="password">Password</label>
						                            <input type="password" name="password" id="password">
						                     </fieldset>
						                    <input type="submit" id="login" value="Sign in">
						                	<label for="checkbox"><input type="checkbox" id="checkbox"> <i>Remember me</i></label>
						            	</fieldset>
						            <span><a href="#">Forgot your password?</a></span>
								</form>
							</div>
						</div>
					</div>
				</div>
				<div class="reg">
					<a href="register.html">REGISTER</a>
				</div>
			<div class="cart box_1">
				<a href="checkout.jsp">
					<h3> <span class="simpleCart_total">$0.00</span> (<span id="simpleCart_quantity" class="simpleCart_quantity">0</span> items)<img src="images/bag.png" alt=""></h3>
				</a>	
				<p><a href="javascript:;" class="simpleCart_empty">(empty card)</a></p>
				<div class="clearfix"> </div>
			</div>
			<div class="create_btn">
				<a href="checkout.jsp">CHECKOUT</a>
			</div>
			<div class="clearfix"> </div>
		</div>
		<div class="search">
		    <form>
		    	<input type="text" value="" placeholder="search...">
				<input type="submit" value="">
			</form>
		</div>
		<div class="clearfix"> </div>
		</div>
		<div class="clearfix"> </div>
	</div>
		
</div>
</div>
</div>
<!-- content -->
<main class="main-content" id="MainContent" role="main" style="margin-top: 3em;">
      



  <script>
    window.__shgProducts = window.__shgProducts || {};
    
      
      
    
  </script>




<div class="shg-clearfix"></div>
<!-- Created with Shogun. -->
<div class="shogun-root" data-shogun-id="5aff1d379c5f960046bc2a83" data-shogun-site-id="b7cbfc10-79d0-4979-b46a-ca99503522e7" data-shogun-page-id="5aff1d379c5f960046bc2a83" data-shogun-page-version-id="5b886451ba5e96004ab48554" data-region="main">
<link rel="stylesheet" type="text/css" href="https://cdn.getshogun.com/aca56285-56a9-4274-8e46-8679b14ccc9c-2.css">
<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Work+Sans">
<div class="shg-box shg-c  " id="s-1cd7d26c-651a-48d3-a805-35ec51070586">
<div class="shg-box-overlay"></div>
<div class="shg-box-content">
<div class="shg-fw" style="margin-right: 0px; margin-left: 0px;">
<div class="shg-fw-inner">
<div class="shg-box shg-c   shg-box-vertical-center" id="s-4c6fdaef-13e7-4393-a95a-35c979cd54e7">
<div class="shg-box-overlay"></div>
<div class="shg-box-content">
<div id="s-246356f3-52b3-4365-8cba-61c449501f07" class="shg-c  shg-align-center">
<div class="shogun-heading-component">
<h1>
    
      Tuxedos
    
  </h1>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
<div class="shg-fw" style="margin-right: 0px; margin-left: 0px;">
<div class="shg-fw-inner">
<div class="shg-box shg-c tuxedos-main-box " id="s-960957c0-174f-480b-9a11-0647459f1a64">
<div class="shg-box-overlay"></div>
<div class="shg-box-content">
<div class="shg-box shg-c  " id="s-74451209-85bd-444a-8b85-6bbe888ac39c">
<div class="shg-box-overlay"></div>
<div class="shg-box-content"></div>
</div>
<div class="shg-box shg-c tuxedo-shop-by-brand-box " id="s-fadef669-4381-43ff-bb90-5cbb2ec9deb0">
<div class="shg-box-overlay"></div>
<div class="shg-box-content">
<div id="s-518448a8-cb7e-49fd-98a2-92d6655281cd" class="shg-c heading ">
<p>Shop By <strong>Brand</strong></p>
</div>
<div class="shg-c  " id="s-1f2d69d2-2f6e-4aa8-899a-7fc2cab512d0">
<div class="shg-row" data-col-grid-mode-on="">
<div class="shg-c-lg-7 shg-c-md-7 shg-c-sm-7 shg-c-xs-12">
<div id="s-e9bb73f6-0cbf-498a-b94e-d27e71421e38" class="shg-c  shg-align-center">
<select id="shop-by-brand-sel" style="width:100%;padding:5px 10px;margin-top:4px">
<option value="">-Select One-</option>
<option value="/collections/baroni-tuxedos-and-formal-wear">Baroni Tuxedos</option>
<option value="/collections/berragamo-tuxedos-and-formal-wear">Berragamo Tuxedos</option>
<option value="/collections/calvin-klein-tuxedos-and-formal-wear">Calvin Klein Tuxedos</option>
<option value="/collections/caravelli-tuxedos-and-formal-wear">Caravelli Tuxedos</option>
<option value="/collections/cardi-tuxedos-and-formal-wear">Cardi Tuxedos</option>
<option value="/collections/ej-samuel-tuxedos-and-formal-wear">EJ Samuel Tuxedos</option>
<option value="/collections/emilio-ciro-tuxedos-and-formal-wear">Emilio Ciro Tuxedos</option>
<option value="/collections/ferrecci-tuxedos-and-formal-wear">Ferrecci Tuxedos</option>
<option value="/collections/galante-tuxedos-and-formal-wear">Galante Tuxedos</option>
<option value="/collections/gianni-manzoni-tuxedos-and-formal-wear">Gianni Manzoni Tuxedos</option>
<option value="/collections/giorgio-valentini-tuxedos-and-formal-wear">Giorgio Valentini Tuxedos</option>
<option value="/collections/ike-behar-tuxedos-and-formal-wear">Ike Behar Tuxedos</option>
<option value="/collections/jean-yves-tuxedos-and-formal-wear">Jean Yves Tuxedos</option>
<option value="/collections/mattarazi-tuxedos-and-formal-wear">Mattarazi Tuxedos</option>
<option value="/collections/michael-kors-tuxedos-and-formal-wear">Michael Kors Tuxedos</option>
<option value="/collections/neil-allyn-tuxedos-and-formal-wear">Neil Allyn Tuxedos</option>
<option value="/collections/paolo-vista-tuxedos-and-formal-wear">Paolo Vista Tuxedos</option>
<option value="/collections/paul-betenly-tuxedos-and-formal-wear">Paul Betenly Tuxedos</option>
<option value="/collections/prive-tuxedos-and-formal-wear">Prive Tuxedos</option>
<option value="/collections/prontomoda-tuxedos-and-formal-wear">Prontomoda Tuxedos</option>
<option value="/collections/ralph-lauren-tuxedos-and-formal-wear">Ralph Lauren Tuxedos</option>
<option value="/collections/statement-tuxedos-and-formal-wear">Statement Tuxedos</option>
<option value="/collections/trend-tuxedos-and-formal-wear">Trend Tuxedos</option>
<option value="/collections/vinci-tuxedos-and-formal-wear">Vinci Tuxedos</option>
<option value="/collections/west-end-tuxedos-and-formal-wear">West End Tuxedos</option>
<option value="/collections/zonettie-tuxedos-and-formal-wear">Zonettie Tuxedos</option></select>
<script>
function redirectCategory(){
	var e = document.getElementById("shop-by-brand-sel");
	var cat_link = e.options[e.selectedIndex].value;
	if(cat_link!=""){
		window.location.href = cat_link;
	}
}
</script>
</div>
</div>
<div class="shg-c-lg-5 shg-c-md-5 shg-c-sm-5 shg-c-xs-12">
<div id="s-6f6bbaa0-f63f-4645-9342-f9149f3ca3df" class="shg-c  shg-align-center">
<a href="javascript:void(0)" onclick="redirectCategory();">
<img id="13da85b0-fa9a-4816-880b-b736f8a01264" class="shogun-image" src="https://ucarecdn.com/13da85b0-fa9a-4816-880b-b736f8a01264/-/format/auto/-/stretch/off/-/resize/3000x/-/quality/lighter/"></a>
</div>
</div>
</div>
</div>
</div>
</div>
<div class="shg-c  " id="s-df77e500-33c6-4f89-b042-63cc835719c7">
<div class="shg-row" data-col-grid-mode-on="">
<div class="shg-c-lg-8 shg-c-md-8 shg-c-sm-8 shg-c-xs-12">
<div id="s-b9e25f28-a796-4636-9d7b-b9c6cd2733d6" class="shg-c  shg-align-center">
<div class="shogun-image-container">
<a class="shogun-image-link" href="/onlineMall/pages/tuxedo-packages.jsp">
<img src="https://i.shgcdn.com/75925909-03e7-420f-a98c-962002de2ad7/-/format/auto/-/stretch/off/-/resize/3000x/-/quality/lighter/" width="" height="" alt="" class="shogun-image img-responsive shogun-image-cover">
<div class="shogun-image-overlay shg-middle-center" style=""></div></a>
</div>
</div>
</div>
<div class="shg-c-lg-4 shg-c-md-4 shg-c-sm-4 shg-c-xs-12">
<div id="s-217146ff-3843-49bb-9a42-885268e21943" class="shg-c tuxedos-row-3-img2 shg-align-center">
<div class="shogun-image-container">
<a class="shogun-image-link" href="/onlineMall/pages/tuxedos/dinner-jackets.jsp">
<img src="https://i.shgcdn.com/0dabf281-ecd0-4c23-b048-bbbcfcc1deac/-/format/auto/-/stretch/off/-/resize/3000x/-/quality/lighter/" width="" height="" alt="" class="shogun-image img-responsive shogun-image-cover">
<div class="shogun-image-overlay shg-middle-center" style=""></div></a>
</div>
</div>
</div>
</div>
</div>
<div id="s-3bc038c8-77df-47da-872b-e468e33a13c8" class="shg-c  ">
<p>SHOP BY COLOR</p>
</div>
<div class="shg-c tuxedos-5-img-box " id="s-774a099b-2f04-4275-80e2-97fd36febfe1">
<div class="shg-row" data-col-grid-mode-on="">
<div class="shg-c-lg-2 shg-c-md-2 shg-c-sm-2 shg-c-xs-6">
<div id="s-cfa11766-eda0-4049-a363-0f11ca225c16" class="shg-c  shg-align-center">
<div class="shogun-image-container">
<a class="shogun-image-link" href="/collections/black-tuxedos">
<img src="https://i.shgcdn.com/740dcdb5-dd80-44d7-aa5c-8d8933d1e560/-/format/auto/-/stretch/off/-/resize/3000x/-/quality/lighter/" width="" height="" alt="" class="shogun-image img-responsive ">
<div class="shogun-image-overlay shg-middle-center" style=""></div></a>
</div>
</div>
</div>
<div class="shg-c-lg-3 shg-c-md-3 shg-c-sm-3 shg-c-xs-6">
<div id="s-cfb0fa29-3186-4e54-9e3a-e347cee23b1e" class="shg-c  shg-align-center">
<div class="shogun-image-container">
<a class="shogun-image-link" href="/collections/blue-tuxedos">
<img src="https://i.shgcdn.com/63d6005d-623a-4512-84c9-2bdf1799b5b7/-/format/auto/-/stretch/off/-/resize/3000x/-/quality/lighter/" width="" height="" alt="" class="shogun-image img-responsive ">
<div class="shogun-image-overlay shg-middle-center" style=""></div></a>
</div>
</div>
</div>
<div class="shg-c-lg-3 shg-c-md-3 shg-c-sm-3 shg-c-xs-12">
<div id="s-25435120-28f9-4661-a18e-30d9019ef5a8" class="shg-c  shg-align-center">
<div class="shogun-image-container">
<a class="shogun-image-link" href="/collections/grey-tuxedos">
<img src="https://i.shgcdn.com/158ec678-7c86-4d3e-8845-b20fde624482/-/format/auto/-/stretch/off/-/resize/3000x/-/quality/lighter/" width="" height="" alt="" class="shogun-image img-responsive ">
<div class="shogun-image-overlay shg-middle-center" style=""></div></a>
</div>
</div>
</div>
<div class="shg-c-lg-2 shg-c-md-2 shg-c-sm-2 shg-c-xs-6">
<div id="s-075a0ffe-631e-4ac1-89ae-5bcc594b9caf" class="shg-c  shg-align-center">
<div class="shogun-image-container">
<a class="shogun-image-link" href="/collections/white-tuxedos">
<img src="https://i.shgcdn.com/2c714246-05bb-48e8-a485-47bca96a28d1/-/format/auto/-/stretch/off/-/resize/3000x/-/quality/lighter/" width="" height="" alt="" class="shogun-image img-responsive ">
<div class="shogun-image-overlay shg-middle-center" style=""></div></a>
</div>
</div>
</div>
<div class="shg-c-lg-2 shg-c-md-2 shg-c-sm-2 shg-c-xs-6">
<div id="s-33d3b984-ba82-4374-8e7b-afc3bb39fa68" class="shg-c  shg-align-center">
<div class="shogun-image-container">
<a class="shogun-image-link" href="/collections/other-color-tuxedos">
<img src="https://i.shgcdn.com/bad05fc9-ec01-4bb5-845a-20265432ba77/-/format/auto/-/stretch/off/-/resize/3000x/-/quality/lighter/" width="" height="" alt="" class="shogun-image img-responsive ">
<div class="shogun-image-overlay shg-middle-center" style=""></div></a>
</div>
</div>
</div>
</div>
</div>
<div id="s-c1c5a602-8158-4e60-abed-4296390183b4" class="shg-c  ">
<p>SHOP BY CATEGORY</p>
</div>
<div class="shg-c tuxedos-7-img-grid " id="s-e5ed4538-52d6-44ce-be4c-250c8c70c9e0">
<div class="shg-row" data-col-grid-mode-on="">
<div class="shg-c-lg-7 shg-c-md-7 shg-c-sm-7 shg-c-xs-12">
<div class="shg-c tuxedoes-7grid-4 " id="s-701c7d12-ca6c-428c-8064-e7a57efe41c0">
<div class="shg-row" data-col-grid-mode-on="">
<div class="shg-c-lg-3 shg-c-md-3 shg-c-sm-3 shg-c-xs-6">
<div id="s-65657bf1-1d54-4399-8849-9abe7a3f494a" class="shg-c  shg-align-center">
<div class="shogun-image-container">
<a class="shogun-image-link" href="/collections/slim-fit-tuxedos">
<img src="https://i.shgcdn.com/b2360168-f1ea-4824-82dd-5c019789fb85/-/format/auto/-/stretch/off/-/resize/3000x/-/quality/lighter/" width="" height="" alt="" class="shogun-image img-responsive ">
<div class="shogun-image-overlay shg-middle-center" style=""></div></a>
</div>
</div>
<div id="s-e6971dcf-9edc-4281-b25a-f141cf1c9895" class="shg-c  ">
<p>Slim fit Tuxedos</p>
</div>
</div>
<div class="shg-c-lg-3 shg-c-md-3 shg-c-sm-3 shg-c-xs-6">
<div id="s-f3d2b372-a3d8-465d-8d0c-869f9422ad71" class="shg-c  shg-align-center">
<div class="shogun-image-container">
<a class="shogun-image-link" href="/collections/designer-tuxedos">
<img src="https://i.shgcdn.com/52b4aac4-699f-4b61-9f0d-5b10a9c78fe3/-/format/auto/-/stretch/off/-/resize/3000x/-/quality/lighter/" width="" height="" alt="" class="shogun-image img-responsive ">
<div class="shogun-image-overlay shg-middle-center" style=""></div></a>
</div>
</div>
<div id="s-f541d5cf-0567-4357-816a-25f859661dbb" class="shg-c  ">
<p>Designer Tuxedos</p>
</div>
</div>
<div class="shg-c-lg-3 shg-c-md-3 shg-c-sm-3 shg-c-xs-6">
<div id="s-9ba8f9bf-d099-4684-98e4-d9afcfbc6e34" class="shg-c  shg-align-center">
<div class="shogun-image-container">
<a class="shogun-image-link" href="/collections/tuxedo-tails">
<img src="https://i.shgcdn.com/d1c21619-8fc7-4917-a33b-2d2a8b0b5186/-/format/auto/-/stretch/off/-/resize/3000x/-/quality/lighter/" width="" height="" alt="" class="shogun-image img-responsive ">
<div class="shogun-image-overlay shg-middle-center" style=""></div></a>
</div>
</div>
<div id="s-4c6c32a4-b714-46e5-9434-6a2d9db3fd4b" class="shg-c  ">
<p>Tuxedo Tails</p>
</div>
</div>
<div class="shg-c-lg-3 shg-c-md-3 shg-c-sm-3 shg-c-xs-6">
<div id="s-a65ccc3b-5c85-4347-b153-c4bb9008b45a" class="shg-c  shg-align-center">
<div class="shogun-image-container">
<a class="shogun-image-link" href="/collections/tuxedo-jackets">
<img src="https://i.shgcdn.com/1d629c26-7d5d-4a46-9426-4bcfd6d2a1cf/-/format/auto/-/stretch/off/-/resize/3000x/-/quality/lighter/" width="" height="" alt="" class="shogun-image img-responsive ">
<div class="shogun-image-overlay shg-middle-center" style=""></div></a>
</div>
</div>
<div id="s-1d7ef08d-9572-4500-a03e-c3138af0f270" class="shg-c  ">
<p>Tuxedo Jackets</p>
</div>
</div>
</div>
</div>
</div>
<div class="shg-c-lg-5 shg-c-md-5 shg-c-sm-5 shg-c-xs-12">
<div class="shg-c tuxedoes-7grid-3 " id="s-67a4c9ea-47a1-40d7-b050-4f355710df82">
<div class="shg-row" data-col-grid-mode-on="">
<div class="shg-c-lg-4 shg-c-md-4 shg-c-sm-4 shg-c-xs-12">
<div id="s-7777be16-794e-480c-9633-90d80ac567d0" class="shg-c  shg-align-center">
<div class="shogun-image-container">
<a class="shogun-image-link" href="/collections/tuxedo-pants">
<img src="https://i.shgcdn.com/70a301eb-f10f-4b85-a355-797463f40263/-/format/auto/-/stretch/off/-/resize/3000x/-/quality/lighter/" width="" height="" alt="" class="shogun-image img-responsive shogun-image-normal">
<div class="shogun-image-overlay shg-middle-center" style=""></div></a>
</div>
</div>
<div id="s-4a69c9c5-091f-4719-8f0d-62b0808a1d56" class="shg-c  ">
<p>Tuxedo Pants</p>
</div>
</div>
<div class="shg-c-lg-4 shg-c-md-4 shg-c-sm-4 shg-c-xs-12">
<div id="s-63727fd1-5eb8-4872-8d77-c3d1325a11e0" class="shg-c  shg-align-center">
<div class="shogun-image-container">
<a class="shogun-image-link" href="/collections/womens-tuxedos">
<img src="https://i.shgcdn.com/3357b886-1fe9-4c59-9924-e3522f879319/-/format/auto/-/stretch/off/-/resize/3000x/-/quality/lighter/" width="" height="" alt="" class="shogun-image img-responsive shogun-image-normal">
<div class="shogun-image-overlay shg-middle-center" style=""></div></a>
</div>
</div>
<div id="s-e5a9add5-c71c-469d-ab09-95886069bf9d" class="shg-c  ">
<p>Women's Tuxedos</p>
</div>
</div>
<div class="shg-c-lg-4 shg-c-md-4 shg-c-sm-4 shg-c-xs-12">
<div id="s-f49b49a7-904b-4d5f-a194-8cdba0f5e2b3" class="shg-c  shg-align-center">
<div class="shogun-image-container">
<a class="shogun-image-link" href="/collections/boys-tuxedos">
<img src="https://i.shgcdn.com/fe38816b-9e6b-45c8-8cd3-baaf93226a92/-/format/auto/-/stretch/off/-/resize/3000x/-/quality/lighter/" width="" height="" alt="" class="shogun-image img-responsive shogun-image-normal">
<div class="shogun-image-overlay shg-middle-center" style=""></div></a>
</div>
</div>
<div id="s-2f3a96ac-ac42-45ba-82e0-65ee2431ddb7" class="shg-c  ">
<p>Kid's Tuxedos</p>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
<div id="s-c71c95a3-3927-489b-98b2-daba375f97d3" class="shg-c  ">
<div class="txt-container">A tuxedo makes anyone look good. It’s not only a great way to bring out your best features, but it’s a stylish outfit that is ideal for a variety of formal events. From weddings and birthday parties to prom nights and even the red carpet – a tuxedo never goes out of style.<br>
<br>
<p>Tuxedos have been around for hundreds of years, and they only become more popular over time. It’s a classic style that goes perfectly with any formal event, and can easily make an impression on any audience. Tuxedos can be bought in different colors and styles, depending on your requirements and personal style. From the classic black tie to wearing double breasted jackets, and choosing between classic neckwear, tuxedo outfits are not only stylish but also one of the most effective outfits available.<br>
<br></p>
<p>If you are looking to buy tuxedos, consider popular colors like gray, white and <a href="/collections/black-tuxedos">black tuxedos</a>. Or you can go for a selection of <a href="/collections/womens-tuxedos">women’s tuxedos</a> that are just as stylish and very popular. A great choice is the Manhattan light gray two-button notch tuxedo or the <a href="/products/barcelona-black-tuxedo-jacket">Barcelona black two-button notch tuxedo</a>. This is a best-seller and features a plain front pants style and a modern fit.<br>
<br></p>
<p>It’s always a good idea to have your tuxedo tailored to your needs. This will ensure that you have a unique fit, that will give you the best image possible. Tailored suits always attract attention and combined with the right fabric choice, you can really look your absolute best.<br>
<br></p>
<p>
<strong>Tuxedo Styles<br>
<br></strong></p>
<p>There are many different tuxedo styles, which is what makes this outfit so versatile. You can choose from a wide range of colors and materials to different designs and even brands; tuxedos will never go out of fashion, and they are ideal for any formal function. Another benefit of a tuxedo is that it can be tailored to provide you with a unique and comfortable fit. Tuxedos are meant to fit absolutely perfectly, and you can choose to accessorize if the event requires it.<br>
<br></p>
<p>Some of the different tuxedo styles available include slim fit tuxedos, designer tuxedos, cutaway tuxedos, and tuxedo packages, among others. This allows you to choose a tuxedo according to your budget, as well as your personal style. A perfectly tailored tuxedo will always turn heads.<br>
<br></p>
<p>
<a href="/collections/slim-fit-tuxedos">Slim fit tuxedos</a> combine classic styling with modern tailoring, to a create a more streamlined fit. Perfect for all occasions such as proms, weddings, and black tie events, these high fashion suits look fabulous with a crisp white shirt and either a bow tie or a slim necktie to complete the look.<br>
<br></p>
<p>You can also choose from our range of <a href="/collections/designer-tuxedos">designer tuxedos</a> are perfect for formal events such as weddings, black tie events, and special occasions where only the best will do. &nbsp;These exclusive garments are made from the finest quality fabrics and tailored to perfection. They are the perfect investment for modern men who dress to impress and love to express their style and individuality with designer pieces.<br>
<br></p>
<p>
<a href="/collections/tuxedo-packages">Tuxedo packages</a> include everything you need to look great for your wedding, prom, or black tie event. Our tuxedo packages consist of a six-piece set with a tuxedo jacket, formal trousers, tuxedo shirt, tuxedo vest or cummerbund, neckwear and a jewelry set.<br>
<br></p>
<p>Tuxedo pants are one of the most important aspects of your outfit. You can choose from various colors like gray, black, navy and chocolate, and choose from a variety of fits like classic, modern, and slim. Tuxedo pants are usually made from materials like wool, polyester, gabardine, and more. They are all very comfortable, and easy to wear. You can also choose between plain front pants or double pleated pants.<br>
<br></p>
<p>You can also add a range of <a href="/pages/formal-accessories">tuxedo accessories</a> to your outfit, including cummerbunds, neckties, jewelry, hats, pocket squares, lapel flowers, and more. These accessories can really complement your tuxedo, and you can decide which accessories will be best for a specific formal event. Although accessories should never be overdone, it’s always an essential part of your look and a great way to add color too.<br>
<br></p>
<p>
<strong>Buying Tuxedos<br>
<br></strong></p>
<p>When you want to buy tuxedos, there are a few things you should consider before choosing an outfit. You need to consider the material you want to wear, as this will make a difference to the look and feel of the tuxedo, as well as the appearance. Next, you should consider the fit you want for your outfit.<br>
<br></p>
<p>As a leading online tuxedo store, Buy4LessTuxedo.com offers a range of high quality, affordable tuxedos for a variety of occasions. We are your number one resource for any formal tuxedo outfit you may need, and we have plenty of accessories to choose from. You can browse through our selection and view a variety of styles, colors, materials, and more. We also offer a selection of <a href="/collections/boys-tuxedos">tuxedos for boys</a>, which are very adorable and perfect for their next formal event.<br>
<br></p>
<p>We can help you find the <a href="/pages/tuxedo-sizing-and-fit">perfect tuxedo fit</a> with a comprehensive guide on the different sizes that are available, and how you can choose the right style for your specific body type. We explain the difference between a modern fit and a slim fit, guide you with pants sizing, waist measurements and more – allowing you to find a tuxedo that suits you best, all in the comfort of your own home.&nbsp;<br>
<br></p>
<p>If you wish to expand your tux knowledge or if you have additional questions, be sure to check out our <a href="/apps/help-center#!what-does-it-mean-when-the-sizing-says-6-inch-drop-on-a-tuxedo">Tuxedos FAQ</a>. For more information about our selection of tuxedos, please don’t hesitate to <a href="/pages/contact-us/">get in touch</a>.&nbsp;</p>
</div>
</div>
</div>
</div>
</div>
</div>
<script type="text/javascript" src="https://cdn.getshogun.com/aca56285-56a9-4274-8e46-8679b14ccc9c.js" async=""></script>
</div>


    </main>

<div class="foot-top">
	<div class="container">
		<div class="col-md-6 s-c">
			<li>
				<div class="fooll">
					<h5>follow us on</h5>
				</div>
			</li>
			<li>
				<div class="social-ic">
					<ul>
						<li><a href="#"><i class="facebok"> </i></a></li>
						<li><a href="#"><i class="twiter"> </i></a></li>
						<li><a href="#"><i class="goog"> </i></a></li>
						<li><a href="#"><i class="be"> </i></a></li>
						<li><a href="#"><i class="pp"> </i></a></li>
							<div class="clearfix"></div>	
					</ul>
				</div>
			</li>
				<div class="clearfix"> </div>
		</div>
		<div class="col-md-6 s-c">
			<div class="stay">
						<div class="stay-left">
							<form>
								<input type="text" placeholder="Enter your email to join our newsletter" required="">
							</form>
						</div>
						<div class="btn-1">
							<form>
								<input type="submit" value="join">
							</form>
						</div>
							<div class="clearfix"> </div>
			</div>
		</div>
			<div class="clearfix"> </div>
	</div>
</div>
<div class="footer">
	<div class="container">
		<div class="col-md-3 cust">
			<h4>CUSTOMER CARE</h4>
				<li><a href="#">Help Center</a></li>
				<li><a href="#">FAQ</a></li>
				<li><a href="buy.html">How To Buy</a></li>
				<li><a href="#">Delivery</a></li>
		</div>
		<div class="col-md-2 abt">
			<h4>ABOUT US</h4>
				<li><a href="#">Our Stories</a></li>
				<li><a href="#">Press</a></li>
				<li><a href="#">Career</a></li>
				<li><a href="contact.jsp">Contact</a></li>
		</div>
		<div class="col-md-2 myac">
			<h4>MY ACCOUNT</h4>
				<li><a href="register.html">Register</a></li>
				<li><a href="#">My Cart</a></li>
				<li><a href="#">Order History</a></li>
				<li><a href="buy.html">Payment</a></li>
		</div>
		<div class="col-md-5 our-st">
			<div class="our-left">
				<h4>OUR STORES</h4>
			</div>
			<div class="our-left1">
				<div class="cr_btn">
					<a href="#">SOLO</a>
				</div>
			</div>
			<div class="our-left1">
				<div class="cr_btn1">
					<a href="#">BOGOR</a>
				</div>
			</div>
			<div class="clearfix"> </div>
				<li><i class="add"> </i>Jl. Haji Muhidin, Blok G no.69</li>
				<li><i class="phone"> </i>025-2839341</li>
				<li><a href="mailto:info@example.com"><i class="mail"> </i>info@sitename.com </a></li>
			
		</div>
		<div class="clearfix"> </div>
			<p>Copyright &copy; 2015.Company name All rights reserved.More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></p>
	</div>
</div>
<% //查看是否登录成功，如果成功有session,登录过就不再显示登录的小 div box
	//调试经验：一些脚本放到页面加载后执行
    User login_user=(User)request.getSession().getAttribute("login_user");
    if(login_user!=null){
    	//out.print("<script>document.getElementById('loginForm').innerHTML='<span>Username:"+login_user.getUname()+"</span>';</script>");
    	out.print("<script>$('#loginForm').html('<span>Username:"+login_user.getUname()+"</span><br/><a id=\"logout\">logout</a>');</script>");
    }
%>
</body>
</html>
