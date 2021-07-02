
//  new Vue({
//      el: '#apps',
//      data: {
//          menuList: [],
//          test: 'TEST LOH !!'
//      },
//      methods: {
//          reverseMessage: function () {
//              this.message = this.message.split('').reverse().join('')
//          }
//      },
//      mounted() {
//          axios.get(`${baseURL}/master/menu/list`)
//              .then((response) => {
//                  this.menuList = response.data;
//                  console.log(this.menuList);
//              })
//              .catch((error) => {
//                  alert('error get data');
//              });
//      },

//  })
