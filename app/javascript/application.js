// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import './modules/homepage'
import anime from './modules/animejs/lib/anime.es.js'

anime({
  targets: "#test",
  translateX: 250,
  rotate: "1turn",
  backgroundColor: "#FFF",
  duration: 800,
});
