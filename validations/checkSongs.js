const checkName = (req, res, next) => {
  if (req.body.name) {
    next();
  } else {
    res.status(400).json({ error: "Name is required!" });
  }
};

const checkArtist = (req, res, next) => {
  if (req.body.artist) {
    next();
  } else {
    res.status(400).json({ error: "Artist is required" });
  }
};

const checkFav = (req, res, next) => {
  if (
    typeof req.body.is_favorite === "boolean" ||
    typeof req.body.is_favorite === undefined
  ) {
    next();
  } else {
    res.status(400).json({ error: "is_favorite should be a boolean value" });
  }
};

// const validateID = (req, res, next) => {
//     const song = songs.findById(id);
//     if (song) {
//     next();
//   } else {
//     res.status(404).json({ error: "no song by that id exists" });
//   }
// };

module.exports = { checkName, checkArtist, checkFav };
