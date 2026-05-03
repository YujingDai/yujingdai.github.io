(function () {
  const extensions = ["png", "jpg", "jpeg", "webp", "avif", "svg"];

  document.querySelectorAll("img[data-cover-base]").forEach((img) => {
    const base = img.dataset.coverBase;
    const version = img.dataset.coverVersion;
    if (!base) return;

    let index = 0;
    const fallback = img.currentSrc || img.src;

    const tryNext = () => {
      if (index >= extensions.length) {
        img.src = fallback;
        return;
      }

      const candidate = `${base}.${extensions[index]}?v=${version}`;
      index += 1;
      const probe = new Image();
      probe.onload = () => {
        img.src = candidate;
        img.classList.add("has-custom-cover");
      };
      probe.onerror = tryNext;
      probe.src = candidate;
    };

    tryNext();
  });
})();
