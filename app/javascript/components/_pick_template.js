const templates = document.querySelectorAll('.template');
const pickTemplateInput = document.getElementById('user_template');
const step2 = document.querySelector('.middle-rectangle span');
const viewMyResumeBtn = document.querySelector(".btn-to-editor");

viewMyResumeBtn.disabled = true;

function pickTemplate(templateName) {
  pickTemplateInput.value = templateName;
  viewMyResumeBtn.disabled = false;
  step2.innerHTML = `<i class="fas fa-check"></i>`
  templates.forEach(function(template) {
    template.classList.remove('template-selected');
  })
};

templates.forEach(function(template) {
  template.addEventListener('click', function() {
    pickTemplate(template.dataset.template);
    this.classList.toggle('template-selected');
  });
});



