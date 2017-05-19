import Welcome from 'components/welcome.html';

export default new Welcome({
  target: document.getElementById('welcome'),
  data: {
    title: 'Middleman is Running'
  }
});

console.log('ready to go');
