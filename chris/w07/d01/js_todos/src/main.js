var todoApp;

window.onload = function(){
todoApp = new TodoApp();
todoApp.start();

};

// var todoList;

// var createTodoElement = function(todo) {
//   var el = document.createElement("div");
//   el.className = "todo-item";

//   var todoTextElement = document.createElement('p');
//   todoTextElement.innerHTML = todo.text;

//   var todoInfoElement = document.createElement('span');
//   todoInfoElement.innerHTML = "Created at:" + todo.createdAt.toLocaleString();

//   el.appendChild(todoTextElement);
//   el.appendChild(todoInfoElement);

//   return el;
// };

// var render = function(todoList) {
//   var todoListElement = document.getElementById("todo-list");

//   for (i in todoList) {
//     // var todo = todoList[i];
//     //console.log(todo);
//     var todoElement = createTodoElement(todoList[i]);
//     todoListElement.appendChild(todoElement);
//   }
// };


// window.onload = function(){
//   todoList = [
//       new Todo({ text: "Do the dishes"}),
//       new Todo({ text: "Hang out the washing"}),
//       new Todo({ text: "Learn JavaScript"})
//      ];

//      render(todoList);
// };