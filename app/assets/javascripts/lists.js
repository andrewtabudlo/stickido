console.log('lists.js linked');
const listFrames = document.getElementsByClassName('listFrame');

function hideSublist(e) {
  const nestedList = e.target.firstElementChild;

  if (nestedList) {
    let hidden = nestedList.hasAttribute('hidden');
    const icon = document.createElement('i');
    icon.className = 'fa fa-caret-down';

    if (!hidden) {
      e.target.appendChild(icon);
      nestedList.setAttribute('hidden', null);
      hidden = !hidden;
    } else {
      e.target.removeChild(e.target.lastChild);
      nestedList.removeAttribute('hidden');
      hidden = !hidden;
    }
  }
}

for (let i = 0; i < listFrames.length; i += 1) {
  const listFrame = listFrames[i];
  listFrame.addEventListener('click', hideSublist);
}
