var cinema = {
  name: "Old St. Cinema",
  address: "23 Old Street, Oxford",
  phone: "01865 123456",
  owner: "John Arbuttle",
  movies: []
};

var screens = [
  {
    number: 1,
    usher: "Sarah Eccles",
    movie: "Jaws"
  },
  {
    number: 2,
    usher: "Ari Ventaro",
    movie: "The Breakfast Club"
  },
  {
    number: 3,
    usher: "Jake Calcas",
    movie: "The Maltese Falcon"
  }
];

var showtimes = ["13:30", "17:00", "20:30"];

var showDays = [
  { text: "monday", value: 0 },
  { text: "tuesday", value: 1 },
  { text: "wednesday", value: 2 },
  { text: "thursday", value: 3 },
  { text: "friday", value: 4 },
  { text: "saturday", value: 5 }
];

showDays.forEach(function(showDay) {
  showtimes.forEach(function(showtime) {
    screens.forEach(function(screen) {
      cinema.movies.push({
        showday: showDay.text,
        showtime: showtime,
        screen: screen
      });
    });
  });
});

console.log(JSON.stringify(cinema));
