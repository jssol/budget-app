const allExpenses = document.getElementById('all-expenses');
const recentExpenses = document.getElementById('recent-expenses');
const ancientExpenses = document.getElementById('ancient-expenses');
const expensiveExpenses = document.getElementById('expensive-expenses');

if (location.pathname.match(/\/users\/\d+\/groups\/\d+\/entities/)) {
  allExpenses.classList.add("active");
} else if (location.pathname.match(/\/users\/\d+\/groups\/\d+\/recent_entities/)) {
  recentExpenses.classList.add("active");
} else if (location.pathname.match(/^\/users\/\d+\/groups\/\d+\/ancient_entities$/)) {
  ancientExpenses.classList.add("active");
} else if (location.pathname.match(/^\/users\/\d+\/groups\/\d+\/expensive_entities$/)) {
  expensiveExpenses.classList.add("active");
}
