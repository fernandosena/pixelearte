<footer>
   <div class="widget">
       <div class="centro">
           <div>
               <h2><?= CONF_SITE_NAME ?></h2>
               <p><?= CONF_SITE_DESC ?></p>
           </div>
           <div>
               <h3>Links rápidos</h3>
               <nav>
                   <ul>
                       <li><a href="<?= url()?>">Home</a></li>
                       <li><a href="<?= url("/sobre")?>">Sobre</a></li>
                   </ul>
               </nav>
           </div>
           <div class="fale-conosco">
               <h3>Fale conosco</h3>
               <div class="endereco">
                   <p><i class="fa-solid fa-location-dot"></i></p>
                   <address>Magalhães Lemos, Nº 203,  05207-130 - São Paulo - SP</address>
               </div>
               <div class="email">
                   <p><i class="fa-solid fa-envelope"></i></p>
                   <p><a href="mailto:<?= CONF_SITE_EMAIL["SAC"] ?>"><?= CONF_SITE_EMAIL["SAC"] ?></a></p>
               </div>
               <div class="horario">
                   <p>Horário de Atendimento:
                       segunda a sexta, das 9h às 18h.</p>
               </div>
           </div>
           <div>
               <h3>Redes Sociais</h3>
               <nav>
                   <ul class="redes-sociais">
                       <a href="https://api.whatsapp.com/<?= CONF_SOCIAL_WHATSAPP_LINK ?>" rel="nofollow" target="_blank"><li><i class="fa-brands fa-whatsapp"></i></li></a>
                       <a href="https://www.facebook.com/<?= CONF_SOCIAL_FACEBOOK_PAGE ?>" rel="nofollow" target="_blank"><li><i class="fa-brands fa-facebook"></i></li></a>
                       <a href="https://www.instagram.com/<?= CONF_SOCIAL_INSTAGRAM_PAGE ?>" rel="nofollow" target="_blank"><li><i class="fa-brands fa-instagram"></i></li></a>
                       <a href="https://www.youtube.com/<?= CONF_SOCIAL_YOUTUBE_PAGE ?>" rel="nofollow" target="_blank"><li><i class="fa-brands fa-youtube"></i></li></a>
                       <a href="https://br.pinterest.com/<?= CONF_SOCIAL_PINTEREST ?>" rel="nofollow" target="_blank"><li><i class="fa-brands fa-pinterest"></i></li></a>

                   </ul>
               </nav>
           </div>
       </div>
   </div>
    <div class="footer">
        <p>Copyright© 2022 - <a href="<?= url("/") ?>"><?= CONF_SITE_DOMAIN ?></a></p>
    </div>
</footer>