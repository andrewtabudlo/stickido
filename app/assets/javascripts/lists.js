console.log('lists.js linked');
const listFrames = document.getElementsByClassName('listFrame');

function hideSublist(e) {
  // disable if the element is a paragraph
  const nestedList = e.target.nextElementSibling;
  console.log(nestedList);

  if (nestedList) {
    let hidden = nestedList.hasAttribute('hidden');
    const icon = document.createElement('SPAN');
    icon.innerHTML = '[show more!]';
    // icon.className = 'fa fa-caret-down';

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
