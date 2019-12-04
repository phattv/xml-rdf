const cinema = {
  name: "Old St. Cinema",
  address: "23 Old Street, Oxford",
  phone: "01865 123456",
  owner: "John Arbuttle",
  moviesByWeek: []
};

const screens = [
  {
    name: "Screen 1",
    usher: "Sarah Eccles"
  },
  {
    name: "Screen 2",
    usher: "Ari Ventaro"
  },
  {
    name: "Screen 3",
    usher: "Jake Calcas"
  }
];

const showWeeks = ["Week 1", "Week 2", "Week 3"];
const showDays = [
  "Monday",
  "Tuesday",
  "Wednesday",
  "Thursday",
  "Friday",
  "Saturday",
  "Sunday"
];
const showTimes = ["13:30", "17:00", "20:30"];

const sundayTheme = "Spaghetti Westerns";
const nonSundayMovies = ["Jaws", "The Breakfast Club", "The Maltese Falcon"];
const sundayMovies = [
  "A fistful of Dollars",
  "For a Few Dollars More",
  "The Good, the Bad and the Ugly"
];

// cinema > week > screen > day > movie with theme
showWeeks.forEach(week => {
  var moviesByScreen = [];
  screens.forEach(screen => {
    var moviesByDay = [];
    showDays.forEach(day => {
      var movies = [],
        theme = "";
      if (day === "Sunday") {
        movies = sundayMovies;
        theme = sundayTheme;
      } else {
        movies = nonSundayMovies;
      }
      moviesByDay.push({
        day,
        movies,
        theme,
        showTimes
      });
      screen.moviesByDay = moviesByDay;
    });
    moviesByScreen.push(screen);
  });

  cinema.moviesByWeek.push({
    week,
    moviesByScreen
  });
});

console.log(JSON.stringify(cinema));
