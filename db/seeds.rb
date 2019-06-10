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
    Time.now(Time.now().strftime("%Y")).strftime("%H:%M")
  end


  Event.create(title: "boxing", description: "a hardcore boxing workout to get your body moving!", date: getCurrentDate, time: getCurrentTime)
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
