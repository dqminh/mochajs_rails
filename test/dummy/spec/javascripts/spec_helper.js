mocha.setup({ui: 'bdd'});
window.expect = chai.expect;

window.onload = function() {
  mocha.run()
};
