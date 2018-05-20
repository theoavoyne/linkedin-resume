const templates = document.querySelectorAll('.template');
const pickTemplateInput = document.getElementById('user_template');
const step2 = document.querySelector('.middle-rectangle span');
const viewMyResumeBtn = document.querySelector(".btn-to-editor");

viewMyResumeBtn.disabled = true;
// if ( viewMyResumeBtn.disabled ) {
//   viewMyResumeBtn.classList.add('btn-inactive');
// } else {
//   viewMyResumeBtn.classList.remove('btn-inactive');
// }


function pickTemplate(templateName) {
  pickTemplateInput.value = templateName;
  viewMyResumeBtn.disabled = false;
  // viewMyResumeBtn.classList.remove('btn-inactive');
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



