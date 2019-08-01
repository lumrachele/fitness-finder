# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  #
  # create_table "events", force: :cascade do |t|
  #   t.string "title"
  #   t.string "description"
  #   t.date "date"
  #   t.time "time"
  #   t.datetime "created_at", null: false
  #   t.datetime "updated_at", null: false
  # end

  def getCurrentDate
    Time.now().strftime("%Y-%m-%d")
  end

  def getCurrentTime
    Time.now().strftime("%H:%M")
  end


  Event.create(title: "boxing", description: "a hardcore boxing workout to get your body moving!", date: getCurrentDate, time: getCurrentTime)
  Event.create(title: "yoga", description: "stretch and strengthen your body with thoughtful movements", date: getCurrentDate, time: getCurrentTime)
  Event.create(title: "crossfit", description: "a HIIT workout for athletes of all levels", date: getCurrentDate, time: getCurrentTime)
  Event.create(title: "cardio dance", description: "get your heart rate up with these fun moves", date: getCurrentDate, time: getCurrentTime)
  Event.create(title: "barry's bootcamp", description: "HIIT", date: getCurrentDate, time: getCurrentTime)
  Event.create(title: "pilates", description: "strength and stretch", date: getCurrentDate, time: getCurrentTime)
  Event.create(title: "lifting", description: "get strong, get gains", date: getCurrentDate, time: getCurrentTime)


  #
  #
  # create_table "users", force: :cascade do |t|
  #   t.string "name"
  #   t.string "email"
  #   t.string "password_digest"
  #   t.datetime "created_at", null: false
  #   t.datetime "updated_at", null: false
  # end
  User.create(name: "Rachel")

  # create_table "favorites", force: :cascade do |t|
  #   t.integer "user_id"
  #   t.integer "event_id"
  #   t.datetime "created_at", null: false
  #   t.datetime "updated_at", null: false
  # end
  Favorite.create(user_id: 1, event_id: 1)
  Favorite.create(user_id: 1, event_id: 2)
  Favorite.create(user_id: 1, event_id: 4)
