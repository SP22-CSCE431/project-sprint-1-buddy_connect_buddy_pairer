# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_02_11_202302) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.integer "commentId"
    t.integer "postId"
    t.integer "posterId"
    t.date "commentDate"
    t.string "message"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "groups", force: :cascade do |t|
    t.integer "groupId"
    t.integer "leaderInt"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "interests", force: :cascade do |t|
    t.integer "interestsId"
    t.integer "userId"
    t.string "careerInterest"
    t.string "hobbies"
    t.integer "favMovieGenres"
    t.integer "numberPrereqs"
    t.string "expectations"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "posts", force: :cascade do |t|
    t.integer "postId"
    t.integer "posterId"
    t.date "postDate"
    t.string "title"
    t.string "body"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.integer "profileId"
    t.integer "userId"
    t.string "year"
    t.string "picture"
    t.string "contactInfo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.integer "studentId"
    t.integer "groupId"
    t.integer "insterestsId"
    t.integer "profileId"
    t.boolean "isOfficer"
    t.boolean "isAdmin"
    t.string "firstName"
    t.string "lastName"
    t.string "tamuEmail"
    t.date "dateOfBirth"
    t.boolean "gradAssistance"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
