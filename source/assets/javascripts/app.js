import Welcome from 'components/welcome.html';

export default new Welcome({
  target: document.getElementById('welcome'),
  data: {
    title: 'Other title'
  }
});

console.log('ready to go');
