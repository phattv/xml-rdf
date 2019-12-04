const cinema = {
  name: "Old St. Cinema",
  address: "23 Old Street, Oxford",
  phone: "01865 123456",
  owner: "John Arbuttle",
  movies: []
};

const usherSarah = "Sarah Eccles",
  userAri = "Ari Ventaro",
  userJake = "Jake Calcas";
const nonSundayScreens = [
  {
    number: 1,
    usher: usherSarah,
    movie: "Jaws"
  },
  {
    number: 2,
    usher: userAri,
    movie: "The Breakfast Club"
  },
  {
    number: 3,
    usher: userJake,
    movie: "The Maltese Falcon"
  }
];

const theme = "Spaghetti Westerns";
const sundayScreens = [
  {
    number: 1,
    usher: usherSarah,
    movie: "A fistful of Dollars",
    theme: theme
  },
  {
    number: 2,
    usher: userAri,
    movie: "For a Few Dollars More",
    theme: theme
  },
  {
    number: 3,
    usher: userJake,
    movie: "The Good, the Bad and the Ugly",
    theme: theme
  }
];

const showTimes = ["13:30", "17:00", "20:30"];

const showDays = [
  { text: "Monday", value: 0 },
  { text: "Tuesday", value: 1 },
  { text: "Wednesday", value: 2 },
  { text: "Thursday", value: 3 },
  { text: "Friday", value: 4 },
  { text: "Saturday", value: 5 },
  { text: "Sunday", value: 6 }
];

const showWeeks = ["Week 1", "Week 2", "Week 3"];

showWeeks.forEach(function(showWeek) {
  var currentShowWeek = {
    week: showWeek,
    movies: []
  };

  showDays.forEach(function(showDay) {
    // If sunday
    if (showDay.value === 6) {
      screens = sundayScreens;
    } else {
      screens = nonSundayScreens;
    }

    var currentShowDay = {
      day: showDay.text,
      movies: []
    };

    showTimes.forEach(function(showtime) {
      screens.forEach(function(screen) {
        currentShowDay.movies.push({
          showtime: showtime,
          screen: screen
        });
      });
    });

    currentShowWeek.movies.push(currentShowDay);
  });

  cinema.movies.push(currentShowWeek);
});

console.log(JSON.stringify(cinema));
