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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130802012331) do

  create_table "admins", :force => true do |t|
    t.string   "nama"
    t.string   "email"
    t.string   "password_digest"
    t.string   "remember_token"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "role"
    t.integer  "univ_id"
  end

  create_table "feedbacks", :force => true do |t|
    t.string   "from"
    t.text     "feed"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "jenis_pts", :force => true do |t|
    t.string   "jenis"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "jenjang_prodis", :force => true do |t|
    t.string   "jenjang"
    t.string   "keterangan"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "kotas", :force => true do |t|
    t.string   "kota"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "provinsi_id"
  end

  add_index "kotas", ["provinsi_id"], :name => "index_kotas_on_provinsi_id"

  create_table "prodi_akreditasis", :force => true do |t|
    t.string   "no_sk"
    t.integer  "tahun_sk"
    t.string   "peringkat"
    t.date     "tanggal_kadaluarsa"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.integer  "prodi_id"
    t.string   "status"
  end

  create_table "prodi_biayas", :force => true do |t|
    t.text     "biaya"
    t.string   "nilai"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "prodi_id"
  end

  add_index "prodi_biayas", ["prodi_id"], :name => "index_prodi_biayas_on_prodi_id"

  create_table "prodi_bidangs", :force => true do |t|
    t.string   "nama_bidang"
    t.integer  "level"
    t.text     "deskripsi"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.text     "lapangan_kerja"
  end

  create_table "prodi_fasilitas_galleries", :force => true do |t|
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.integer  "prodifasil_id"
    t.integer  "prodi_fasil_id"
    t.string   "created_by"
    t.string   "updated_by"
  end

  add_index "prodi_fasilitas_galleries", ["prodifasil_id"], :name => "index_prodi_fasilitas_galleries_on_prodifasil_id"

  create_table "prodi_fasils", :force => true do |t|
    t.text     "fasilitas"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "prodi_id"
    t.string   "created_by"
    t.string   "updated_by"
  end

  add_index "prodi_fasils", ["prodi_id"], :name => "index_prodi_fasils_on_prodi_id"

  create_table "prodi_galleries", :force => true do |t|
    t.string   "caption"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "prodi_id"
    t.string   "created_by"
    t.string   "updated_by"
    t.string   "image"
  end

  add_index "prodi_galleries", ["prodi_id"], :name => "index_prodi_galleries_on_prodi_id"

  create_table "prodi_passing_grades", :force => true do |t|
    t.integer  "tahun"
    t.float    "grades"
    t.string   "status"
    t.integer  "prodi_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "prodi_prestasis", :force => true do |t|
    t.integer  "tahun"
    t.text     "prestasi"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "prodi_id"
    t.string   "created_by"
    t.string   "updated_by"
  end

  add_index "prodi_prestasis", ["prodi_id"], :name => "index_prodi_prestasis_on_prodi_id"

  create_table "prodi_silabuses", :force => true do |t|
    t.text     "tujuan"
    t.text     "kompetensi"
    t.text     "pokok_bahasan"
    t.text     "referensi"
    t.text     "mata_kuliah"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "prodi_id"
    t.string   "created_by"
    t.string   "updated_by"
  end

  add_index "prodi_silabuses", ["prodi_id"], :name => "index_prodi_silabuses_on_prodi_id"

  create_table "prodis", :force => true do |t|
    t.string   "nama_prodi"
    t.integer  "tahun_berdiri"
    t.string   "fakultas"
    t.text     "alamat"
    t.string   "telepon"
    t.string   "fax"
    t.string   "email"
    t.string   "website"
    t.text     "profile"
    t.integer  "jumlah_mahasiswa"
    t.text     "bidang_studi"
    t.text     "kompetensi"
    t.text     "seleksi_masuk"
    t.text     "logo_path"
    t.integer  "total_dosen_prof"
    t.integer  "total_dosen_doktor"
    t.integer  "total_dosen_master"
    t.integer  "total_dosen_sarjana"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.integer  "univ_id"
    t.integer  "kota_id"
    t.integer  "jenjang_prodi_id"
    t.string   "created_by"
    t.string   "updated_by"
    t.string   "slug"
    t.string   "logo"
    t.string   "featured_image"
    t.string   "facebook"
    t.string   "twitter"
    t.string   "youtube"
    t.integer  "prodi_bidang_id"
    t.string   "silabus"
  end

  add_index "prodis", ["kota_id"], :name => "index_prodis_on_kota_id"
  add_index "prodis", ["slug"], :name => "index_prodis_on_slug"
  add_index "prodis", ["univ_id"], :name => "index_prodis_on_univ_id"

  create_table "provinsis", :force => true do |t|
    t.string   "provinsi"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "subscriber_beasiswas", :force => true do |t|
    t.string   "nama_beasiswa"
    t.string   "instansi"
    t.string   "periode"
    t.string   "nilai"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "subscriber_id"
  end

  add_index "subscriber_beasiswas", ["subscriber_id"], :name => "index_subscriber_beasiswas_on_subscriber_id"

  create_table "subscriber_organisasis", :force => true do |t|
    t.string   "nama_organisasi"
    t.string   "jabatan"
    t.string   "tingkat"
    t.string   "periode"
    t.text     "path_sertifikat"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "subscriber_id"
  end

  add_index "subscriber_organisasis", ["subscriber_id"], :name => "index_subscriber_organisasis_on_subscriber_id"

  create_table "subscriber_pelatihans", :force => true do |t|
    t.string   "kategori"
    t.text     "judul"
    t.string   "penyelenggara"
    t.string   "skala"
    t.integer  "tahun"
    t.text     "sertifikat_path"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "subscriber_id"
  end

  add_index "subscriber_pelatihans", ["subscriber_id"], :name => "index_subscriber_pelatihans_on_subscriber_id"

  create_table "subscriber_pendidikans", :force => true do |t|
    t.string   "jenjang"
    t.string   "institusi"
    t.integer  "tahun_masuk"
    t.integer  "tahun_keluar"
    t.string   "nilai_akhir"
    t.text     "path_ijazah"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "subscriber_id"
  end

  create_table "subscriber_pengalaman_kerjas", :force => true do |t|
    t.string   "instansi"
    t.string   "bidang"
    t.string   "jabatan"
    t.integer  "tahun_masuk"
    t.integer  "tahun_keluar"
    t.text     "sk_kerja_path"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "subscriber_id"
  end

  add_index "subscriber_pengalaman_kerjas", ["subscriber_id"], :name => "index_subscriber_pengalaman_kerjas_on_subscriber_id"

  create_table "subscriber_prestasis", :force => true do |t|
    t.string   "nama_lomba"
    t.string   "peringkat"
    t.text     "tempat"
    t.integer  "tahun"
    t.text     "path_sertifikat"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "subscriber_id"
  end

  add_index "subscriber_prestasis", ["subscriber_id"], :name => "index_subscriber_prestasis_on_subscriber_id"

  create_table "subscriber_rekomendasis", :force => true do |t|
    t.string   "nama_rekomendator"
    t.string   "jabatan"
    t.string   "email"
    t.string   "telepon"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.integer  "subscriber_id"
  end

  add_index "subscriber_rekomendasis", ["subscriber_id"], :name => "index_subscriber_rekomendasis_on_subscriber_id"

  create_table "subscribers", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
    t.string   "password_digest"
    t.string   "remember_token"
    t.string   "provider"
    t.string   "uid"
    t.string   "oath_token"
    t.datetime "oath_expires"
    t.boolean  "from_facebook",          :default => false
    t.boolean  "email_activation",       :default => false
    t.string   "tempat_lahir"
    t.date     "tanggal_lahir"
    t.string   "agama"
    t.string   "jenis_kelamin"
    t.string   "status_pernikahan"
    t.text     "alamat"
    t.string   "kodepos"
    t.string   "telepon"
    t.string   "no_hp"
    t.integer  "provinsi_id"
    t.integer  "kota_id"
    t.string   "password_reset_token"
    t.datetime "password_reset_sent_at"
  end

  add_index "subscribers", ["email"], :name => "index_users_on_email", :unique => true
  add_index "subscribers", ["remember_token"], :name => "index_users_on_remember_token"

  create_table "survey_alumnis", :force => true do |t|
    t.integer  "subscriber_id"
    t.integer  "score"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.text     "hasil"
  end

  add_index "survey_alumnis", ["subscriber_id"], :name => "index_survey_alumnis_on_subscriber_id"

  create_table "univ_fasilitas_galleries", :force => true do |t|
    t.string   "caption"
    t.text     "description"
    t.text     "path"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.integer  "univfasilitas_id"
    t.string   "created_by"
    t.string   "updated_by"
  end

  add_index "univ_fasilitas_galleries", ["univfasilitas_id"], :name => "index_univ_fasilitas_galleries_on_univfasilitas_id"

  create_table "univbeasiswas", :force => true do |t|
    t.string   "nama_beasiswa"
    t.string   "instansi"
    t.string   "periode"
    t.string   "nilai"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "univ_id"
    t.string   "created_by"
    t.string   "updated_by"
  end

  add_index "univbeasiswas", ["univ_id"], :name => "index_univbeasiswas_on_univ_id"

  create_table "univbiayas", :force => true do |t|
    t.text     "biaya"
    t.string   "nilai"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "univ_id"
    t.string   "created_by"
    t.string   "updated_by"
  end

  create_table "univfasilitases", :force => true do |t|
    t.text     "fasilitas"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "univ_id"
    t.string   "created_by"
    t.string   "updated_by"
  end

  add_index "univfasilitases", ["univ_id"], :name => "index_univfasilitases_on_univ_id"

  create_table "univgalleries", :force => true do |t|
    t.text     "caption"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "univ_id"
    t.string   "created_by"
    t.string   "updated_by"
    t.string   "image"
  end

  add_index "univgalleries", ["univ_id"], :name => "index_univgalleries_on_univ_id"

  create_table "univkerjasamas", :force => true do |t|
    t.text     "kerjasama"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "univ_id"
    t.string   "created_by"
    t.string   "updated_by"
  end

  add_index "univkerjasamas", ["univ_id"], :name => "index_univkerjasamas_on_univ_id"

  create_table "univprestasis", :force => true do |t|
    t.integer  "tahun"
    t.text     "prestasi"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "univ_id"
    t.string   "created_by"
    t.string   "updated_by"
  end

  add_index "univprestasis", ["univ_id"], :name => "index_univprestasis_on_univ_id"

  create_table "univrankings", :force => true do |t|
    t.integer  "univ_id"
    t.string   "status"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.float    "government"
    t.float    "college"
    t.float    "society"
    t.float    "score"
  end

  create_table "univs", :force => true do |t|
    t.string   "nama_pt"
    t.integer  "tahun_berdiri"
    t.string   "email"
    t.string   "website"
    t.text     "alamat"
    t.string   "telepon"
    t.string   "status_negeri"
    t.text     "profile"
    t.text     "visi"
    t.text     "misi"
    t.text     "seleksi_masuk"
    t.text     "kapasitas_akademik"
    t.text     "staff_pendukung"
    t.text     "deskripsi"
    t.text     "logo_path"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.integer  "kota_id"
    t.integer  "jenis_pt_id"
    t.string   "created_by"
    t.string   "updated_by"
    t.string   "slug"
    t.string   "logo"
    t.string   "featured_image"
    t.string   "facebook"
    t.string   "twitter"
    t.string   "youtube"
  end

  add_index "univs", ["kota_id"], :name => "index_univs_on_kota_id"
  add_index "univs", ["slug"], :name => "index_univs_on_slug", :unique => true

  create_table "visitors", :force => true do |t|
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
