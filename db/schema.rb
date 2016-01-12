# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20151118205406) do

  create_table "a_list_subscribers", force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.integer  "a_list_id",  limit: 4
    t.string   "email",      limit: 255
    t.string   "slug",       limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "a_lists", force: :cascade do |t|
    t.string   "slug",                          limit: 255
    t.text     "main_text",                     limit: 65535
    t.text     "sub_text",                      limit: 65535
    t.string   "status",                        limit: 255,   default: "draft"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "thank_you_main_text",           limit: 65535
    t.text     "thank_you_sub_text",            limit: 65535
    t.string   "background_image_file_name",    limit: 255
    t.string   "background_image_content_type", limit: 255
    t.integer  "background_image_file_size",    limit: 4
    t.datetime "background_image_updated_at"
  end

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace",     limit: 255
    t.text     "body",          limit: 65535
    t.string   "resource_id",   limit: 255,   null: false
    t.string   "resource_type", limit: 255,   null: false
    t.integer  "author_id",     limit: 4
    t.string   "author_type",   limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "add_ons", id: false, force: :cascade do |t|
    t.integer "product_id",         limit: 4
    t.integer "add_on_product_id",  limit: 4
    t.integer "wearable_id",        limit: 4
    t.integer "add_on_wearable_id", limit: 4
  end

  add_index "add_ons", ["add_on_product_id"], name: "index_add_ons_on_add_on_product_id", using: :btree
  add_index "add_ons", ["add_on_wearable_id"], name: "index_add_ons_on_add_on_wearable_id", using: :btree
  add_index "add_ons", ["product_id"], name: "index_add_ons_on_product_id", using: :btree
  add_index "add_ons", ["wearable_id"], name: "index_add_ons_on_wearable_id", using: :btree

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree

  create_table "affiliates", force: :cascade do |t|
    t.string   "slug",         limit: 255
    t.text     "display_name", limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "affirm_payments", force: :cascade do |t|
    t.integer  "order_id",      limit: 4
    t.string   "charge_id",     limit: 255
    t.string   "charge_type",   limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "captured_date"
  end

  create_table "audio_attributes", force: :cascade do |t|
    t.integer  "order_product_id", limit: 4
    t.string   "audio_color",      limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "audio_brands", force: :cascade do |t|
    t.string   "name",                          limit: 255
    t.string   "tagline",                       limit: 255
    t.string   "sub_tagline",                   limit: 255
    t.string   "url",                           limit: 255
    t.string   "brand_type",                    limit: 255
    t.integer  "sort_index",                    limit: 4
    t.string   "wrapper_class",                 limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "background_image_file_name",    limit: 255
    t.string   "background_image_content_type", limit: 255
    t.integer  "background_image_file_size",    limit: 4
    t.datetime "background_image_updated_at"
    t.string   "slug",                          limit: 255
    t.string   "page_image_file_name",          limit: 255
    t.string   "page_image_content_type",       limit: 255
    t.integer  "page_image_file_size",          limit: 4
    t.datetime "page_image_updated_at"
  end

  create_table "audio_color_lists", force: :cascade do |t|
    t.string   "audio_color", limit: 255
    t.string   "color_hex",   limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "audio_colors", id: false, force: :cascade do |t|
    t.integer "audio_id",            limit: 4
    t.integer "audio_color_list_id", limit: 4
  end

  add_index "audio_colors", ["audio_color_list_id"], name: "index_audio_colors_on_audio_color_list_id", using: :btree
  add_index "audio_colors", ["audio_id"], name: "index_audio_colors_on_audio_id", using: :btree

  create_table "audio_gear_images", force: :cascade do |t|
    t.integer  "audio_id",            limit: 4
    t.text     "image_alt",           limit: 65535
    t.boolean  "default"
    t.string   "photo_file_name",     limit: 255
    t.string   "photo_content_type",  limit: 255
    t.integer  "photo_file_size",     limit: 4
    t.datetime "photo_updated_at"
    t.integer  "audio_color_list_id", limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "audio_quiz_data", force: :cascade do |t|
    t.string   "user_id",         limit: 255
    t.string   "integer",         limit: 255
    t.string   "audio_category",  limit: 255
    t.string   "price_range",     limit: 255
    t.string   "primary_purpose", limit: 255
    t.string   "gender",          limit: 255
    t.string   "age_range",       limit: 255
    t.string   "state",           limit: 255
    t.string   "scale",           limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "audio_sku_images", force: :cascade do |t|
    t.integer  "audio_sku_id",       limit: 4
    t.text     "image_link",         limit: 65535
    t.text     "thumbnail_link",     limit: 65535
    t.text     "image_alt",          limit: 65535
    t.boolean  "default"
    t.string   "image_file_name",    limit: 255
    t.string   "image_content_type", limit: 255
    t.integer  "image_file_size",    limit: 4
    t.datetime "image_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "audio_skus", force: :cascade do |t|
    t.integer  "audio_id",            limit: 4
    t.string   "descriptor",          limit: 255
    t.string   "serial",              limit: 255
    t.string   "status",              limit: 255
    t.text     "notes",               limit: 65535
    t.integer  "audio_color_list_id", limit: 4
    t.string   "tracking",            limit: 255
    t.decimal  "price",                             precision: 8, scale: 2, default: 0.0
    t.integer  "days_rented",         limit: 4
    t.string   "sku_condition",       limit: 255
    t.text     "sku_description",     limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "audios", force: :cascade do |t|
    t.text     "name",                    limit: 65535
    t.text     "display_name",            limit: 65535
    t.text     "description_text",        limit: 65535
    t.text     "description_points",      limit: 65535
    t.text     "specs",                   limit: 65535
    t.string   "slug",                    limit: 255
    t.decimal  "retail_price",                          precision: 8, scale: 2, default: 0.0
    t.decimal  "hto_price",                             precision: 8, scale: 2, default: 0.0
    t.text     "review_blurbs",           limit: 65535
    t.text     "audio_video",             limit: 65535
    t.boolean  "private_store",                                                 default: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "audio_type",              limit: 255
    t.integer  "audio_brand_id",          limit: 4
    t.string   "tile_image_file_name",    limit: 255
    t.string   "tile_image_content_type", limit: 255
    t.integer  "tile_image_file_size",    limit: 4
    t.datetime "tile_image_updated_at"
    t.decimal  "credit_amount",                         precision: 8, scale: 2, default: 0.0
    t.text     "accessories",             limit: 65535
  end

  add_index "audios", ["slug"], name: "index_audios_on_slug", unique: true, using: :btree

  create_table "battery_lists", force: :cascade do |t|
    t.text    "battery_name", limit: 65535
    t.integer "product_id",   limit: 4
  end

  create_table "black_friday_products", force: :cascade do |t|
    t.integer "product_id", limit: 4
    t.integer "sku_id",     limit: 4
  end

  create_table "black_friday_wearables", force: :cascade do |t|
    t.integer  "wearable_id",     limit: 4
    t.integer  "wearable_sku_id", limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "blacklisted_addresses", force: :cascade do |t|
    t.text     "address_1",  limit: 65535
    t.text     "address_2",  limit: 65535
    t.string   "city",       limit: 255
    t.string   "state",      limit: 255
    t.text     "phone",      limit: 65535
    t.string   "zip",        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "brand_lists", force: :cascade do |t|
    t.string   "brand",      limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "category_lists", force: :cascade do |t|
    t.string   "category",   limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "charges", force: :cascade do |t|
    t.integer  "order_id",    limit: 4
    t.string   "charge_type", limit: 255
    t.decimal  "amount",                  precision: 8, scale: 2, default: 0.0
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "charge_id",   limit: 255
  end

  create_table "comparison_products", id: false, force: :cascade do |t|
    t.integer "source_id",      limit: 4
    t.integer "destination_id", limit: 4
  end

  add_index "comparison_products", ["destination_id"], name: "index_comparison_products_on_destination_id", using: :btree
  add_index "comparison_products", ["source_id"], name: "index_comparison_products_on_source_id", using: :btree

  create_table "coupons", force: :cascade do |t|
    t.integer  "product_id",      limit: 4
    t.string   "coupon_type",     limit: 255
    t.text     "description",     limit: 65535
    t.string   "name",            limit: 255
    t.date     "start_date"
    t.date     "end_date"
    t.float    "value",           limit: 24,    default: 0.0
    t.float    "total_minimum",   limit: 24,    default: 0.0
    t.boolean  "free_shipping"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "one_time_only",                 default: false
    t.boolean  "first_time",                    default: false
    t.text     "for_order_types", limit: 65535
  end

  add_index "coupons", ["name"], name: "index_coupons_on_name", using: :btree

  create_table "delayed_jobs", force: :cascade do |t|
    t.integer  "priority",   limit: 4,     default: 0, null: false
    t.integer  "attempts",   limit: 4,     default: 0, null: false
    t.text     "handler",    limit: 65535,             null: false
    t.text     "last_error", limit: 65535
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by",  limit: 255
    t.string   "queue",      limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "delayed_jobs", ["priority", "run_at"], name: "delayed_jobs_priority", using: :btree

  create_table "disabled_dates", force: :cascade do |t|
    t.boolean  "start_date"
    t.boolean  "end_date"
    t.date     "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ebay_alerts", force: :cascade do |t|
    t.string   "item_name",      limit: 255
    t.string   "item_condition", limit: 255
    t.integer  "max_price",      limit: 4
    t.string   "alert_email",    limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "featured_gears", force: :cascade do |t|
    t.integer  "product_id", limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "featured_wearables", force: :cascade do |t|
    t.string   "title",                        limit: 255
    t.text     "item_link",                    limit: 65535
    t.boolean  "visible"
    t.boolean  "is_kit"
    t.string   "image_file_name",              limit: 255
    t.string   "image_content_type",           limit: 255
    t.integer  "image_file_size",              limit: 4
    t.datetime "image_updated_at"
    t.string   "backgroundimage_file_name",    limit: 255
    t.string   "backgroundimage_content_type", limit: 255
    t.integer  "backgroundimage_file_size",    limit: 4
    t.datetime "backgroundimage_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fitness_lanches", force: :cascade do |t|
    t.string   "fitness_email",         limit: 255
    t.text     "fitness_referring_url", limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string   "slug",           limit: 255, null: false
    t.integer  "sluggable_id",   limit: 4,   null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope",          limit: 255
    t.datetime "created_at"
  end

  add_index "friendly_id_slugs", ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true, using: :btree
  add_index "friendly_id_slugs", ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type", using: :btree
  add_index "friendly_id_slugs", ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id", using: :btree
  add_index "friendly_id_slugs", ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type", using: :btree

  create_table "gear_images", force: :cascade do |t|
    t.integer  "product_id",                      limit: 4
    t.text     "image",                           limit: 65535
    t.text     "thumbnail",                       limit: 65535
    t.boolean  "default"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_alt",                       limit: 255
    t.string   "product_gear_image_file_name",    limit: 255
    t.string   "product_gear_image_content_type", limit: 255
    t.integer  "product_gear_image_file_size",    limit: 4
    t.datetime "product_gear_image_updated_at"
  end

  create_table "gear_weekend_offers", force: :cascade do |t|
    t.integer  "product_id",     limit: 4
    t.decimal  "prev_price",               precision: 10, scale: 2
    t.decimal  "discount_price",           precision: 10, scale: 2
    t.date     "offer_date"
    t.integer  "count",          limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "gift_orders", force: :cascade do |t|
    t.integer  "qty",               limit: 4
    t.string   "to_person",         limit: 255
    t.text     "message",           limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "order_products_id", limit: 4
    t.string   "cformat",           limit: 255
    t.decimal  "amount",                          precision: 8, scale: 2
  end

  add_index "gift_orders", ["order_products_id"], name: "index_gift_orders_on_order_products_id", using: :btree

  create_table "holiday_category_lists", force: :cascade do |t|
    t.string   "category",   limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image",      limit: 255
  end

  create_table "holiday_product_categories", id: false, force: :cascade do |t|
    t.integer "product_id",               limit: 4
    t.integer "holiday_category_list_id", limit: 4
  end

  add_index "holiday_product_categories", ["holiday_category_list_id"], name: "index_holiday_product_categories_on_holiday_category_list_id", using: :btree
  add_index "holiday_product_categories", ["product_id"], name: "index_holiday_product_categories_on_product_id", using: :btree

  create_table "holiday_store_products", force: :cascade do |t|
    t.integer "product_id", limit: 4
  end

  create_table "image_details", force: :cascade do |t|
    t.string   "title",                      limit: 255
    t.string   "slug",                       limit: 255
    t.integer  "hearts",                     limit: 4
    t.text     "small_location",             limit: 65535
    t.text     "lightbox_location",          limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "is_video",                                 default: false
    t.string   "product_image_file_name",    limit: 255
    t.string   "product_image_content_type", limit: 255
    t.integer  "product_image_file_size",    limit: 4
    t.datetime "product_image_updated_at"
  end

  create_table "image_interactions", id: false, force: :cascade do |t|
    t.integer "user_id",         limit: 4
    t.integer "image_detail_id", limit: 4
  end

  create_table "inspirations", force: :cascade do |t|
    t.string   "title",              limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name",    limit: 255
    t.string   "image_content_type", limit: 255
    t.integer  "image_file_size",    limit: 4
    t.datetime "image_updated_at"
    t.integer  "product_id",         limit: 4
    t.string   "product_name",       limit: 255
  end

  create_table "kit_audios", force: :cascade do |t|
    t.integer  "audio_id",   limit: 4
    t.integer  "kit_id",     limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "kit_audios", ["audio_id"], name: "index_kit_audios_on_audio_id", using: :btree
  add_index "kit_audios", ["kit_id"], name: "index_kit_audios_on_kit_id", using: :btree

  create_table "kit_products", id: false, force: :cascade do |t|
    t.integer "product_id", limit: 4
    t.integer "kit_id",     limit: 4
  end

  add_index "kit_products", ["kit_id"], name: "index_kit_products_on_kit_id", using: :btree
  add_index "kit_products", ["product_id"], name: "index_kit_products_on_product_id", using: :btree

  create_table "operation_issues", force: :cascade do |t|
    t.integer  "order_id",   limit: 4
    t.text     "issue",      limit: 65535
    t.text     "status",     limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "order_audio_kit_items", force: :cascade do |t|
    t.integer  "order_product_id", limit: 4
    t.integer  "audio_id",         limit: 4
    t.integer  "audio_sku_id",     limit: 4
    t.string   "audio_color",      limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "order_audio_kit_items", ["audio_id"], name: "index_order_audio_kit_items_on_audio_id", using: :btree
  add_index "order_audio_kit_items", ["order_product_id"], name: "index_order_audio_kit_items_on_order_product_id", using: :btree

  create_table "order_payments", force: :cascade do |t|
    t.integer  "order_id",       limit: 4
    t.decimal  "amount",                     precision: 8, scale: 2
    t.date     "date_to_charge"
    t.string   "charge_status",  limit: 255
    t.string   "charge_id",      limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "order_products", force: :cascade do |t|
    t.integer  "product_id",        limit: 4
    t.integer  "order_id",          limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "insurance"
    t.integer  "sku_detail_id",     limit: 4
    t.integer  "wearable_id",       limit: 4
    t.boolean  "wearable_purchase",           default: false
    t.integer  "wearable_sku_id",   limit: 4
    t.integer  "items_count",       limit: 4
    t.boolean  "is_rto"
    t.boolean  "is_affirm"
    t.boolean  "drop_shipped"
    t.integer  "audio_id",          limit: 4
    t.integer  "audio_sku_id",      limit: 4
    t.boolean  "audio_purchase",              default: false
  end

  add_index "order_products", ["audio_id"], name: "index_order_products_on_audio_id", using: :btree
  add_index "order_products", ["order_id"], name: "index_order_products_on_order_id", using: :btree
  add_index "order_products", ["product_id"], name: "index_order_products_on_product_id", using: :btree
  add_index "order_products", ["sku_detail_id"], name: "index_order_products_on_sku_detail_id", using: :btree
  add_index "order_products", ["wearable_id"], name: "index_order_products_on_wearable_id", using: :btree

  create_table "orders", force: :cascade do |t|
    t.integer  "user_id",                 limit: 4
    t.date     "start_date"
    t.date     "end_date"
    t.string   "status",                  limit: 255
    t.decimal  "sub_total",                             precision: 8, scale: 2, default: 0.0
    t.decimal  "tax",                                   precision: 8, scale: 2, default: 0.0
    t.decimal  "shipping",                              precision: 8, scale: 2, default: 0.0
    t.string   "coupon_code",             limit: 255
    t.decimal  "total",                                 precision: 8, scale: 2, default: 0.0
    t.string   "stripe_token",            limit: 255
    t.string   "stripe_charge",           limit: 255
    t.string   "tracking_number",         limit: 255
    t.string   "return_tracking_number",  limit: 255
    t.string   "shipping_service",        limit: 255
    t.string   "order_state",             limit: 255
    t.string   "slug",                    limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "shipping_id",             limit: 255
    t.float    "amount_saved",            limit: 24
    t.string   "shipping_label_url",      limit: 255
    t.string   "return_label_url",        limit: 255
    t.string   "stripe_card_id",          limit: 255
    t.float    "ship_rate",               limit: 24
    t.float    "return_rate",             limit: 24
    t.text     "notes",                   limit: 65535
    t.string   "referral",                limit: 255
    t.text     "referring_url",           limit: 65535
    t.text     "landing_url",             limit: 65535
    t.text     "shipping_type",           limit: 65535
    t.decimal  "order_credit",                          precision: 8, scale: 2
    t.string   "return_id",               limit: 255
    t.string   "shipping_label_zpl",      limit: 255
    t.string   "return_label_zpl",        limit: 255
    t.string   "order_type",              limit: 255,                           default: "rental"
    t.string   "giftee_email",            limit: 255
    t.string   "giftee_name",             limit: 255
    t.text     "giftee_message",          limit: 65535
    t.datetime "estimated_arrival"
    t.string   "packed_by",               limit: 255
    t.text     "cancel_info",             limit: 65535
    t.text     "user_instructions",       limit: 65535
    t.float    "signifyd_score",          limit: 53
    t.string   "shipping_message",        limit: 255
    t.string   "shipping_carrier",        limit: 255
    t.date     "ship_date"
    t.string   "return_shipping_carrier", limit: 255
    t.date     "purchase_completed_date"
    t.boolean  "is_pickup",                                                     default: false
    t.string   "pickup_at",               limit: 255
    t.string   "warehouse",               limit: 255,                           default: "SF"
  end

  add_index "orders", ["coupon_code"], name: "index_orders_on_coupon_code", using: :btree
  add_index "orders", ["slug"], name: "index_orders_on_slug", unique: true, using: :btree
  add_index "orders", ["user_id"], name: "index_orders_on_user_id", using: :btree

  create_table "pandora_codes", force: :cascade do |t|
    t.string   "gift_code_number", limit: 255
    t.string   "redeem_url",       limit: 255
    t.string   "view_url",         limit: 255
    t.integer  "month_duration",   limit: 4
    t.integer  "hour_duration",    limit: 4
    t.boolean  "availability",                 default: true
    t.integer  "order_id",         limit: 4
    t.datetime "sent_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "personal_informations", force: :cascade do |t|
    t.integer  "user_id",             limit: 4
    t.text     "billing_address",     limit: 65535
    t.string   "billing_state",       limit: 255
    t.string   "billing_city",        limit: 255
    t.string   "billing_zip",         limit: 255
    t.text     "shipping_address_1",  limit: 65535
    t.string   "shipping_state",      limit: 255
    t.string   "shipping_city",       limit: 255
    t.string   "shipping_zip",        limit: 255
    t.string   "referral_link",       limit: 255
    t.string   "stripe_token",        limit: 255
    t.integer  "days_rented",         limit: 4
    t.integer  "times_rented",        limit: 4
    t.decimal  "credit_amount",                     precision: 8, scale: 2, default: 0.0
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "shipping_first_name", limit: 65535
    t.text     "shipping_last_name",  limit: 65535
    t.text     "shipping_address_2",  limit: 65535
    t.text     "shipping_phone",      limit: 65535
  end

  add_index "personal_informations", ["user_id"], name: "index_personal_informations_on_user_id", using: :btree

  create_table "photography_types", force: :cascade do |t|
    t.integer  "user_id",          limit: 4
    t.string   "photography_type", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "picked_bies", force: :cascade do |t|
    t.string   "name",               limit: 255
    t.string   "image_file_name",    limit: 255
    t.string   "image_content_type", limit: 255
    t.integer  "image_file_size",    limit: 4
    t.datetime "image_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "popular_items", force: :cascade do |t|
    t.string   "title",              limit: 255
    t.text     "description",        limit: 65535
    t.integer  "picked_by_id",       limit: 4
    t.boolean  "visible"
    t.boolean  "is_kit"
    t.string   "image_file_name",    limit: 255
    t.string   "image_content_type", limit: 255
    t.integer  "image_file_size",    limit: 4
    t.datetime "image_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "item_link",          limit: 65535
  end

  create_table "product_brands", id: false, force: :cascade do |t|
    t.integer "product_id",    limit: 4
    t.integer "brand_list_id", limit: 4
  end

  add_index "product_brands", ["brand_list_id"], name: "index_product_brands_on_brand_list_id", using: :btree
  add_index "product_brands", ["product_id"], name: "index_product_brands_on_product_id", using: :btree

  create_table "product_categories", id: false, force: :cascade do |t|
    t.integer "product_id",       limit: 4
    t.integer "category_list_id", limit: 4
  end

  add_index "product_categories", ["category_list_id"], name: "index_product_categories_on_category_list_id", using: :btree
  add_index "product_categories", ["product_id"], name: "index_product_categories_on_product_id", using: :btree

  create_table "product_images", force: :cascade do |t|
    t.integer "image_detail_id", limit: 4
    t.integer "product_id",      limit: 4
    t.boolean "show",                      default: true
  end

  add_index "product_images", ["image_detail_id"], name: "index_product_images_on_image_detail_id", using: :btree
  add_index "product_images", ["product_id"], name: "index_product_images_on_product_id", using: :btree

  create_table "product_prices", force: :cascade do |t|
    t.integer "product_id",  limit: 4
    t.decimal "price_day4",            precision: 8, scale: 2, default: 0.0
    t.decimal "price_day7",            precision: 8, scale: 2, default: 0.0
    t.decimal "price_day10",           precision: 8, scale: 2, default: 0.0
    t.decimal "price_day14",           precision: 8, scale: 2, default: 0.0
    t.integer "day4_mult",   limit: 4
    t.integer "day7_mult",   limit: 4
    t.integer "day10_mult",  limit: 4
    t.integer "day14_mult",  limit: 4
  end

  add_index "product_prices", ["product_id"], name: "index_product_prices_on_product_id", using: :btree

  create_table "product_reviews", force: :cascade do |t|
    t.integer  "product_id", limit: 4
    t.integer  "user_id",    limit: 4
    t.text     "review",     limit: 65535
    t.boolean  "show",                     default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_tags", id: false, force: :cascade do |t|
    t.integer  "product_id",  limit: 4
    t.integer  "tag_list_id", limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "product_tags", ["product_id"], name: "index_product_tags_on_product_id", using: :btree
  add_index "product_tags", ["tag_list_id"], name: "index_product_tags_on_tag_list_id", using: :btree

  create_table "products", force: :cascade do |t|
    t.string   "name",             limit: 255
    t.string   "display_name",     limit: 255
    t.string   "slug",             limit: 255
    t.decimal  "retail_price",                   precision: 8, scale: 2, default: 0.0
    t.string   "product_type",     limit: 255
    t.text     "main_description", limit: 65535
    t.string   "how_to_link",      limit: 255
    t.string   "how_to_link_2",    limit: 255
    t.integer  "times_used",       limit: 4
    t.integer  "days_rented",      limit: 4
    t.integer  "rating",           limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "tip",              limit: 65535
    t.boolean  "rent",                                                   default: false
    t.boolean  "buy",                                                    default: false
    t.decimal  "trial_price",                    precision: 8, scale: 2, default: 0.0
    t.decimal  "insurance",                      precision: 8, scale: 2, default: 0.0
    t.boolean  "show_product",                                           default: false
    t.boolean  "no_insurance",                                           default: false
    t.boolean  "kit_only",                                               default: false
    t.boolean  "add_on_default",                                         default: false
    t.text     "specs",            limit: 65535
    t.text     "why_pick",         limit: 65535
    t.text     "excerpt",          limit: 65535
    t.float    "weight",           limit: 24,                            default: 0.0
    t.boolean  "new_product",                                            default: false
    t.boolean  "featured_product",                                       default: false
  end

  add_index "products", ["slug"], name: "index_products_on_slug", unique: true, using: :btree

  create_table "qualifies", force: :cascade do |t|
    t.string   "first_name",         limit: 255
    t.string   "last_name",          limit: 255
    t.string   "email",              limit: 255
    t.string   "phone",              limit: 255
    t.string   "address_1",          limit: 255
    t.string   "address_2",          limit: 255
    t.string   "city",               limit: 255
    t.string   "state",              limit: 255
    t.string   "zipcode",            limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "score",              limit: 4,     default: 0
    t.string   "bin",                limit: 255
    t.string   "billing_address_1",  limit: 255
    t.string   "billing_address_2",  limit: 255
    t.string   "billing_city",       limit: 255
    t.string   "billing_state",      limit: 255
    t.string   "billing_zip",        limit: 255
    t.string   "billing_first_name", limit: 255
    t.string   "billing_last_name",  limit: 255
    t.string   "ipaddress",          limit: 255
    t.string   "product_name",       limit: 255
    t.string   "exp_month",          limit: 255
    t.string   "exp_year",           limit: 255
    t.text     "notes",              limit: 65535
    t.integer  "product_id",         limit: 4
    t.integer  "sku_id",             limit: 4
    t.text     "questions",          limit: 65535
  end

  create_table "recommended_products", id: false, force: :cascade do |t|
    t.integer "source_id",      limit: 4
    t.integer "destination_id", limit: 4
  end

  add_index "recommended_products", ["destination_id"], name: "index_recommended_products_on_destination_id", using: :btree
  add_index "recommended_products", ["source_id"], name: "index_recommended_products_on_source_id", using: :btree

  create_table "rent_to_owns", force: :cascade do |t|
    t.integer  "product_id",     limit: 4
    t.decimal  "starting_price",             precision: 8, scale: 2, default: 0.0
    t.decimal  "monthly_price",              precision: 8, scale: 2, default: 0.0
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "item_type",      limit: 255
    t.string   "product_name",   limit: 255
  end

  create_table "request_items", force: :cascade do |t|
    t.string   "product_name", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "user_email",   limit: 255
  end

  create_table "review_best_uses", force: :cascade do |t|
    t.integer "review_id", limit: 4
    t.string  "best_use",  limit: 255
  end

  create_table "review_cons", force: :cascade do |t|
    t.integer "review_id", limit: 4
    t.string  "con",       limit: 255
  end

  create_table "review_photos", force: :cascade do |t|
    t.integer  "review_id",          limit: 4
    t.string   "photo_file_name",    limit: 255
    t.string   "photo_content_type", limit: 255
    t.integer  "photo_file_size",    limit: 4
    t.datetime "photo_updated_at"
  end

  create_table "review_pros", id: false, force: :cascade do |t|
    t.integer "review_id", limit: 4
    t.string  "pro",       limit: 255
  end

  create_table "reviews", force: :cascade do |t|
    t.integer  "product_id",        limit: 4
    t.integer  "user_id",           limit: 4
    t.integer  "rating",            limit: 4
    t.string   "headline",          limit: 255
    t.text     "comments",          limit: 65535
    t.string   "nickname",          limit: 255
    t.string   "location",          limit: 255
    t.string   "status",            limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "item_used_for",     limit: 255
    t.string   "recommended",       limit: 255
    t.boolean  "most_favorable"
    t.boolean  "most_critical"
    t.integer  "helpful_count",     limit: 4,     default: 0
    t.string   "photographer_type", limit: 255
  end

  create_table "selective_items_on_products_pages", force: :cascade do |t|
    t.integer  "wearable_id", limit: 4
    t.integer  "product_id",  limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "shipping_rates", force: :cascade do |t|
    t.string  "state",       limit: 255
    t.decimal "rate",                    precision: 8, scale: 2, default: 18.0
    t.decimal "oneday_rate",             precision: 8, scale: 2
    t.decimal "twoday_rate",             precision: 8, scale: 2
  end

  create_table "sku_details", force: :cascade do |t|
    t.integer  "product_id",      limit: 4
    t.text     "descriptor",      limit: 65535
    t.text     "serial",          limit: 65535
    t.text     "notes",           limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "status",          limit: 255
    t.string   "tracking",        limit: 255
    t.decimal  "price",                         precision: 8, scale: 2, default: 0.0
    t.integer  "days_rented",     limit: 4,                             default: 0
    t.string   "sku_condition",   limit: 255
    t.text     "sku_description", limit: 65535
    t.date     "bought_on"
    t.date     "sold_on"
    t.decimal  "bought_for",                    precision: 8, scale: 2
    t.decimal  "sold_for",                      precision: 8, scale: 2
    t.integer  "sold_to_order",   limit: 4
  end

  create_table "sku_gear_images", force: :cascade do |t|
    t.integer  "sku_detail_id",           limit: 4
    t.text     "image_link",              limit: 65535
    t.text     "thumbnail_link",          limit: 65535
    t.text     "image_alt",               limit: 65535
    t.boolean  "default"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "gear_image_file_name",    limit: 255
    t.string   "gear_image_content_type", limit: 255
    t.integer  "gear_image_file_size",    limit: 4
    t.datetime "gear_image_updated_at"
  end

  create_table "subscribers", force: :cascade do |t|
    t.string   "email",         limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "referring_url", limit: 65535
    t.text     "landing_url",   limit: 65535
    t.boolean  "sub_products"
    t.boolean  "sub_wearables"
  end

  create_table "tag_lists", force: :cascade do |t|
    t.string   "tag",        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "trade_in_cameras", force: :cascade do |t|
    t.integer  "product_id",              limit: 4
    t.string   "user_email",              limit: 255
    t.string   "camera_condition",        limit: 255
    t.boolean  "battery_and_charger"
    t.string   "shutter_actuation_count", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "trade_in_lenses", force: :cascade do |t|
    t.integer  "product_id",         limit: 4
    t.string   "user_email",         limit: 255
    t.string   "lens_condition",     limit: 255
    t.boolean  "original_lens_hood"
    t.boolean  "front_rear_caps"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_brands", id: false, force: :cascade do |t|
    t.integer "user_id",       limit: 4
    t.integer "brand_list_id", limit: 4
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255,   default: "", null: false
    t.string   "encrypted_password",     limit: 255,   default: "", null: false
    t.string   "first_name",             limit: 255
    t.string   "last_name",              limit: 255
    t.string   "slug",                   limit: 255
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,     default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "birthday"
    t.string   "gender",                 limit: 255
    t.string   "referrer",               limit: 255
    t.string   "stripe_customer_id",     limit: 255
    t.string   "fav_item",               limit: 255
    t.string   "default_stripe_card_id", limit: 255
    t.text     "referring_url",          limit: 65535
    t.text     "landing_url",            limit: 65535
    t.string   "referral_code",          limit: 255
    t.integer  "discount",               limit: 4
    t.integer  "fraud",                  limit: 1,     default: 0
    t.string   "authentication_token",   limit: 255
  end

  add_index "users", ["authentication_token"], name: "index_users_on_authentication_token", using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["slug"], name: "index_users_on_slug", unique: true, using: :btree

  create_table "wearable_attributes", force: :cascade do |t|
    t.string   "wearable_color",   limit: 255
    t.string   "wearable_size",    limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "order_product_id", limit: 4
  end

  add_index "wearable_attributes", ["order_product_id"], name: "index_wearable_attributes_on_order_product_id", using: :btree

  create_table "wearable_color_lists", force: :cascade do |t|
    t.string   "wearable_color", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "color_hex",      limit: 255
  end

  create_table "wearable_colors", id: false, force: :cascade do |t|
    t.integer "wearable_id",            limit: 4
    t.integer "wearable_color_list_id", limit: 4
  end

  add_index "wearable_colors", ["wearable_color_list_id"], name: "index_wearable_colors_on_wearable_color_list_id", using: :btree
  add_index "wearable_colors", ["wearable_id"], name: "index_wearable_colors_on_wearable_id", using: :btree

  create_table "wearable_comparison_products", id: false, force: :cascade do |t|
    t.integer "source_id",      limit: 4
    t.integer "destination_id", limit: 4
  end

  add_index "wearable_comparison_products", ["destination_id"], name: "index_wearable_comparison_products_on_destination_id", using: :btree
  add_index "wearable_comparison_products", ["source_id"], name: "index_wearable_comparison_products_on_source_id", using: :btree

  create_table "wearable_gear_images", force: :cascade do |t|
    t.integer  "wearable_id",            limit: 4
    t.text     "image_alt",              limit: 65535
    t.boolean  "default"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo_file_name",        limit: 255
    t.string   "photo_content_type",     limit: 255
    t.integer  "photo_file_size",        limit: 4
    t.datetime "photo_updated_at"
    t.integer  "wearable_color_list_id", limit: 4
  end

  create_table "wearable_kit_products", id: false, force: :cascade do |t|
    t.integer "wearable_id", limit: 4
    t.integer "kit_id",      limit: 4
  end

  add_index "wearable_kit_products", ["kit_id"], name: "index_wearable_kit_products_on_kit_id", using: :btree
  add_index "wearable_kit_products", ["wearable_id"], name: "index_wearable_kit_products_on_wearable_id", using: :btree

  create_table "wearable_quiz_data", force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.string   "age_range",  limit: 255
    t.string   "gender",     limit: 255
    t.text     "activities", limit: 65535
    t.string   "email",      limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "wearable_quiz_data", ["user_id"], name: "index_wearable_quiz_data_on_user_id", using: :btree

  create_table "wearable_size_lists", force: :cascade do |t|
    t.string   "wearable_size", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "size_display",  limit: 255
  end

  create_table "wearable_sizes", id: false, force: :cascade do |t|
    t.integer "wearable_id",           limit: 4
    t.integer "wearable_size_list_id", limit: 4
  end

  add_index "wearable_sizes", ["wearable_id"], name: "index_wearable_sizes_on_wearable_id", using: :btree
  add_index "wearable_sizes", ["wearable_size_list_id"], name: "index_wearable_sizes_on_wearable_size_list_id", using: :btree

  create_table "wearable_sku_images", force: :cascade do |t|
    t.integer  "wearable_sku_id",    limit: 4
    t.text     "image_link",         limit: 65535
    t.text     "thumbnail_link",     limit: 65535
    t.text     "image_alt",          limit: 65535
    t.boolean  "default"
    t.string   "image_file_name",    limit: 255
    t.string   "image_content_type", limit: 255
    t.integer  "image_file_size",    limit: 4
    t.datetime "image_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "wearable_skus", force: :cascade do |t|
    t.integer  "wearable_id",            limit: 4
    t.string   "descriptor",             limit: 255
    t.string   "serial",                 limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "status",                 limit: 255
    t.text     "notes",                  limit: 65535
    t.integer  "wearable_color_list_id", limit: 4
    t.integer  "wearable_size_list_id",  limit: 4
    t.string   "tracking",               limit: 255
    t.decimal  "price",                                precision: 10
    t.integer  "days_rented",            limit: 4
    t.string   "sku_condition",          limit: 255
    t.text     "sku_description",        limit: 65535
  end

  create_table "wearable_tag_lists", force: :cascade do |t|
    t.string   "wearable_tag", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "wearable_tags", force: :cascade do |t|
    t.integer "wearable_id",          limit: 4
    t.integer "wearable_tag_list_id", limit: 4
    t.integer "priority",             limit: 1, default: 2
  end

  add_index "wearable_tags", ["wearable_id"], name: "index_wearable_tags_on_wearable_id", using: :btree
  add_index "wearable_tags", ["wearable_tag_list_id"], name: "index_wearable_tags_on_wearable_tag_list_id", using: :btree

  create_table "wearable_type_lists", force: :cascade do |t|
    t.string   "wearable_type", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "wearable_types", id: false, force: :cascade do |t|
    t.integer "wearable_id",           limit: 4
    t.integer "wearable_type_list_id", limit: 4
  end

  add_index "wearable_types", ["wearable_id"], name: "index_wearable_types_on_wearable_id", using: :btree
  add_index "wearable_types", ["wearable_type_list_id"], name: "index_wearable_types_on_wearable_type_list_id", using: :btree

  create_table "wearables", force: :cascade do |t|
    t.text     "name",               limit: 65535
    t.text     "display_name",       limit: 65535
    t.text     "description_text",   limit: 65535
    t.text     "description_points", limit: 65535
    t.text     "specs",              limit: 65535
    t.string   "slug",               limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "primary_type",       limit: 65535
    t.decimal  "retail_price",                     precision: 8, scale: 2, default: 0.0
    t.string   "battery_life",       limit: 255,                           default: "0.0"
    t.boolean  "sleep",                                                    default: false
    t.boolean  "activity",                                                 default: false
    t.boolean  "mobile",                                                   default: false
    t.boolean  "alarm",                                                    default: false
    t.text     "review_blurbs",      limit: 65535
    t.boolean  "show_wearable",                                            default: false
    t.boolean  "waterproof",                                               default: false
    t.text     "wearable_video",     limit: 65535
    t.boolean  "show_sleep",                                               default: false
    t.boolean  "show_fitness",                                             default: false
    t.boolean  "show_connected",                                           default: false
    t.boolean  "is_buy",                                                   default: true
    t.boolean  "show_heartrate",                                           default: false
    t.boolean  "spl_item",                                                 default: false
    t.decimal  "spl_price",                        precision: 8, scale: 2
    t.string   "wearable_type",      limit: 255
    t.boolean  "heartrate",                                                default: false
    t.text     "accessories",        limit: 65535
    t.text     "wearables_ios",      limit: 65535
    t.text     "wearables_android",  limit: 65535
    t.text     "wearables_desktop",  limit: 65535
    t.text     "setup_link",         limit: 65535
    t.text     "troubleshoot_link",  limit: 65535
    t.text     "forums_link",        limit: 65535
    t.text     "setup_description",  limit: 65535
    t.string   "preorder_info",      limit: 255
    t.float    "weight",             limit: 24,                            default: 0.0
    t.boolean  "is_rent",                                                  default: true
  end

  add_index "wearables", ["slug"], name: "index_wearables_on_slug", unique: true, using: :btree

  create_table "whitelists", force: :cascade do |t|
    t.text     "whitelist_email", limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
