<?php
ob_start();
date_default_timezone_set('America/Sao_Paulo');
require __DIR__ . "/vendor/autoload.php";

/**
 * BOOTSTRAP
 */

use CoffeeCode\Router\Router;
use Source\Core\Session;

$session = new Session();
$route = new Router(url(), ":");
$route->namespace("Source\App\Web");

/**
 * WEB ROUTES
 */
$route->group(null);
$route->get("/", "Web:home");
$route->get("/sobre", "Web:about");

//blog
$route->group("/blog");
$route->get("/", "Web:blog");
$route->get("/p/{page}", "Web:blog");
$route->get("/{uri}", "Web:blogPost");
$route->post("/buscar", "Web:blogSearch");
$route->get("/buscar/{search}/{page}", "Web:blogSearch");
$route->get("/em/{category}", "Web:blogCategory");
$route->get("/em/{category}/{page}", "Web:blogCategory");

//auth
$route->group(null);
$route->get("/entrar/{type}", "Web:login");
$route->post("/entrar", "Web:login");
$route->get("/cadastrar/{type}", "Web:register");
$route->post("/cadastrar", "Web:register");
$route->get("/recuperar", "Web:forget");
$route->post("/recuperar", "Web:forget");
$route->get("/recuperar/{code}", "Web:reset");
$route->post("/recuperar/resetar", "Web:reset");
$route->get("/checkout", "Cart:checkout");
$route->post("/checkout", "Cart:checkout");

$route->group("/produtos");
$route->get("/", "Product:home");
$route->get("/categoria/{category}", "Product:category");
$route->get("/categoria/{category}/{page}", "Product:category");
$route->post("/categoria", "Product:category");
$route->post("/buscar", "Product:search");
$route->get("/buscar/{search}/{page}", "Product:search");

//optin
$route->group(null);
$route->get("/confirma", "Web:confirm");
$route->get("/obrigado/{email}", "Web:success");

//services
$route->group(null);
$route->get("/termos", "Web:terms");


//produtos
$route->namespace("Source\App\Web");
$route->group("/produto");
$route->get("/{uri}", "Product:single");

$route->group(null);
$route->get("/carrinho", "Cart:home");
//$route->get("/carrinho/add/{id}", "Cart:add");
$route->post("/carrinho/add", "Cart:add");
$route->post("/carrinho/calc", "Cart:calc");
$route->get("/carrinho/del/{id}/{all}", "Cart:del");
$route->post("/carrinho/del/{id}/{all}", "Cart:del");

/**
 * APP
 */
$route->group("/app");
$route->get("/", "App:home");
$route->get("/receber", "App:income");
$route->get("/receber/{status}/{category}/{date}", "App:income");
$route->get("/pagar", "App:expense");
$route->get("/pagar/{status}/{category}/{date}", "App:expense");
$route->get("/fixas", "App:fixed");
$route->get("/carteiras", "App:wallets");
$route->get("/fatura/{invoice}", "App:invoice");
$route->get("/perfil", "App:profile");
$route->get("/assinatura", "App:signature");
$route->get("/sair", "App:logout");

$route->post("/dash", "App:dash");
$route->post("/launch", "App:launch");
$route->post("/invoice/{invoice}", "App:invoice");
$route->post("/remove/{invoice}", "App:remove");
$route->post("/support", "App:support");
$route->post("/onpaid", "App:onpaid");
$route->post("/filter", "App:filter");
$route->post("/profile", "App:profile");
$route->post("/wallets/{wallet}", "App:wallets");

/**
 * ADMIN ROUTES
 */
$route->namespace("Source\App\Admin");
$route->group("/admin");

//login
$route->get("/", "Login:root");
$route->get("/login", "Login:login");
$route->post("/login", "Login:login");

//dash
$route->get("/dash", "Dash:dash");
$route->get("/dash/home", "Dash:home");
$route->post("/dash/home", "Dash:home");
$route->get("/logoff", "Dash:logoff");

//control
$route->get("/control/home", "Control:home");
$route->get("/control/subscriptions", "Control:subscriptions");
$route->post("/control/subscriptions", "Control:subscriptions");
$route->get("/control/subscriptions/{search}/{page}", "Control:subscriptions");
$route->get("/control/subscription/{id}", "Control:subscription");
$route->post("/control/subscription/{id}", "Control:subscription");
$route->get("/control/plans", "Control:plans");
$route->get("/control/plans/{page}", "Control:plans");
$route->get("/control/plan", "Control:plan");
$route->post("/control/plan", "Control:plan");
$route->get("/control/plan/{plan_id}", "Control:plan");
$route->post("/control/plan/{plan_id}", "Control:plan");

//products
$route->get("/products/home", "Product:home");
$route->post("/products/home", "Product:home");
$route->get("/products/home/{search}/{page}", "Product:home");
$route->get("/products/product", "Product:product");
$route->post("/products/product", "Product:product");
$route->get("/products/product/{product_id}", "Product:product");
$route->post("/products/product/{product_id}", "Product:product");
$route->get("/products/categories", "Product:categories");
$route->get("/products/categories/{page}", "Product:categories");
$route->get("/products/category", "Product:category");
$route->post("/products/category", "Product:category");
$route->get("/products/category/{category_id}", "Product:category");
$route->post("/products/category/{category_id}", "Product:category");

$route->get("/products/subcategory/{category_id}", "Product:subcategory");
$route->post("/products/subcategory/{category_id}", "Product:subcategory");
$route->get("/products/subcategory/{category_id}/{subcategory_id}", "Product:subcategory");
$route->post("/products/subcategory/{category_id}/{subcategory_id}", "Product:subcategory");

$route->get("/products/variation/{product_id}", "Product:variation");
$route->post("/products/variation", "Product:variation");

//blog
$route->get("/blog/home", "Blog:home");
$route->post("/blog/home", "Blog:home");
$route->get("/blog/home/{search}/{page}", "Blog:home");
$route->get("/blog/post", "Blog:post");
$route->post("/blog/post", "Blog:post");
$route->get("/blog/post/{post_id}", "Blog:post");
$route->post("/blog/post/{post_id}", "Blog:post");
$route->get("/blog/categories", "Blog:categories");
$route->get("/blog/categories/{page}", "Blog:categories");
$route->get("/blog/category", "Blog:category");
$route->post("/blog/category", "Blog:category");
$route->get("/blog/category/{category_id}", "Blog:category");
$route->post("/blog/category/{category_id}", "Blog:category");

//faqs
$route->get("/faq/home", "Faq:home");
$route->get("/faq/home/{page}", "Faq:home");
$route->get("/faq/channel", "Faq:channel");
$route->post("/faq/channel", "Faq:channel");
$route->get("/faq/channel/{channel_id}", "Faq:channel");
$route->post("/faq/channel/{channel_id}", "Faq:channel");
$route->get("/faq/question/{channel_id}", "Faq:question");
$route->post("/faq/question/{channel_id}", "Faq:question");
$route->get("/faq/question/{channel_id}/{question_id}", "Faq:question");
$route->post("/faq/question/{channel_id}/{question_id}", "Faq:question");

//users
$route->get("/users/home", "Users:home");
$route->post("/users/home", "Users:home");
$route->get("/users/home/{search}/{page}", "Users:home");
$route->get("/users/user", "Users:user");
$route->post("/users/user", "Users:user");
$route->get("/users/user/{user_id}", "Users:user");
$route->post("/users/user/{user_id}", "Users:user");

//notification center
$route->post("/notifications/count", "Notifications:count");
$route->post("/notifications/list", "Notifications:list");

//END ADMIN
$route->namespace("Source\App");

/**
 * PAY ROUTES
 */
$route->group("/pay");
$route->post("/create", "Pay:create");
$route->post("/update", "Pay:update");

/**
 * ERROR ROUTES
 */
$route->namespace("Source\App\Web");
$route->group("/ops");
$route->get("/{errcode}", "Web:error");

/**
 * ROUTE
 */
$route->dispatch();

/**
 * ERROR REDIRECT
 */
if ($route->error()) {
    $route->redirect("/ops/{$route->error()}");
}

ob_end_flush();