window.addEventListener('scroll', (event) => {
  progress = (this.scrollY / (document.body.scrollHeight - window.innerHeight)) * 100;
  window.scrolling_progress_channel.postMessage(progress);
});
