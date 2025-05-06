const noteBookDb=process.env.NOTEBOOK_DB;
const noteBookUser=process.env.NOTEBOOK_USER;
const noteBookPassword=process.env.NOTEBOOK_PASSWORD;
db = db.getSiblingDB(noteBookDb);
db.createUser({
  user: noteBookUser,
  pwd: noteBookPassword,
  roles: [
    {
      role: "readWrite",
      db: noteBookDb
    }
  ]
});