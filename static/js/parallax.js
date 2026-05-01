(function () {
  'use strict';

  if (window.matchMedia('(prefers-reduced-motion: reduce)').matches) return;

  var targets = document.querySelectorAll('[data-parallax]');
  if (!targets.length) return;

  var ticking = false;

  function shiftFor(el) {
    var ratio = parseFloat(el.dataset.parallax) || 0.5;
    var max = parseFloat(el.dataset.parallaxMax) || 200;
    var mode = el.dataset.parallaxMode || 'rect';

    var raw;
    if (mode === 'scroll') {
      // anchored to top of document — drifts continuously from scrollY=0.
      // Use this for elements that don't have a "cropped image" container,
      // i.e. text and other in-flow elements where translating at scroll=0
      // doesn't reveal anything weird.
      raw = window.scrollY * ratio;
    } else {
      // image stays at rest while element is in or below the viewport;
      // parallax kicks in as the element scrolls past the viewport top.
      // Use this for image containers with overflow:hidden + bottom slack.
      var rect = el.getBoundingClientRect();
      raw = -rect.top * ratio;
    }

    return Math.max(0, Math.min(raw, max));
  }

  function update() {
    targets.forEach(function (el) {
      var y = shiftFor(el);
      el.style.transform = 'translate3d(0,' + y.toFixed(1) + 'px,0)';
    });
    ticking = false;
  }

  function onScroll() {
    if (!ticking) {
      window.requestAnimationFrame(update);
      ticking = true;
    }
  }

  window.addEventListener('scroll', onScroll, { passive: true });
  window.addEventListener('resize', onScroll, { passive: true });
  update();
})();
