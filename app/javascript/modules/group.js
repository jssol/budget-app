const iconInput = document.querySelector('.group_icon');
const iconFilename = document.getElementById('icon-filename');

iconInput.addEventListener('change', (e) => {
  const filename = iconInput.files[0].name;
  iconFilename.textContent = `Icon: ${filename}`;
});
