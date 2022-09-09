// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import './modules/homepage'
import './modules/header';
// import anime from './modules/animejs/lib/anime.es.js'
import "trix"
import "@rails/actiontext"

if (location.pathname.match(/^\/users\/\d+\/groups\/new$/)) {
  import('./modules/group').then((module) => {
    module();
  });
}
