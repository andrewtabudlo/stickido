let oldContainer;
$('ol.nested_with_switch').sortable({
  group: 'nested',
  afterMove(placeholder, container) {
    if (oldContainer != container) {
      if (oldContainer) oldContainer.el.removeClass('active');
      container.el.addClass('active');

      oldContainer = container;
    }
  },
  onDrop($item, container, _super) {
    container.el.removeClass('active');
    _super($item, container);
  },
});
