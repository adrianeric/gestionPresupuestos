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

ActiveRecord::Schema.define(version: 20151111022051) do

  create_table "admins", force: :cascade do |t|
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
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true, using: :btree
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree

  create_table "categorias_recurso", force: :cascade do |t|
    t.string "descripcion", limit: 30, null: false
  end

  create_table "clientes", force: :cascade do |t|
    t.string   "nombre",             limit: 50
    t.string   "direccion",          limit: 100
    t.string   "provincia",          limit: 50
    t.string   "localidad",          limit: 100
    t.string   "codPostal",          limit: 20
    t.string   "pais",               limit: 30
    t.string   "telefono1",          limit: 30
    t.string   "valorIdentificador", limit: 20
    t.integer  "respons_IVA",        limit: 2,   default: 1, null: false
    t.string   "tipoIdentificador",  limit: 10
    t.integer  "forma_de_pago_id",   limit: 4,               null: false
    t.integer  "moneda_id",          limit: 4,   default: 1, null: false
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
    t.string   "direccion2",         limit: 100
    t.string   "provincia2",         limit: 50
    t.string   "localidad2",         limit: 100
    t.string   "codPostal2",         limit: 20
  end

  add_index "clientes", ["valorIdentificador"], name: "index_clientes_on_valorIdentificador", using: :btree

  create_table "condiciones_iva", force: :cascade do |t|
    t.string "descripcion", limit: 50, null: false
  end

  create_table "contactos", force: :cascade do |t|
    t.string   "nombre",         limit: 50,                 null: false
    t.string   "apellido",       limit: 20,                 null: false
    t.integer  "cliente_id",     limit: 4,                  null: false
    t.integer  "tratamiento_id", limit: 4,                  null: false
    t.string   "email",          limit: 255
    t.boolean  "habilitado",     limit: 1,   default: true
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
    t.string   "celular",        limit: 20
    t.string   "tel1",           limit: 20
    t.string   "tel2",           limit: 20
  end

  create_table "esquemas_de_vencimiento", force: :cascade do |t|
    t.integer "forma_de_pago_id",    limit: 4,                 null: false
    t.integer "dias_al_vencimiento", limit: 4,                 null: false
    t.decimal "porcentaje_pago",                precision: 10
    t.string  "descripcion_pago",    limit: 50,                null: false
  end

  create_table "estados_presupuesto", force: :cascade do |t|
    t.string "descripcion", limit: 50, null: false
  end

  create_table "formas_de_pago", force: :cascade do |t|
    t.string "descripcion", limit: 255, null: false
  end

  create_table "items_presupuesto", force: :cascade do |t|
    t.integer "presupuesto_id",      limit: 4,                                              null: false
    t.text    "descripcion",         limit: 65535,                                          null: false
    t.decimal "monto_unitario",                    precision: 19, scale: 2
    t.float   "cantidad",            limit: 24
    t.integer "unidad_medida_id",    limit: 4
    t.float   "plazo_entrega",       limit: 24
    t.string  "texto_plazo_entrega", limit: 100
    t.boolean "adjudicado",          limit: 1,                              default: false
    t.integer "peso_neto_total",     limit: 4
    t.integer "peso_bruto_total",    limit: 4
  end

  add_index "items_presupuesto", ["presupuesto_id"], name: "index_items_presupuesto_on_presupuesto_id", using: :btree

  create_table "monedas", force: :cascade do |t|
    t.string "nombre",      limit: 3
    t.string "descripcion", limit: 25
  end

  create_table "presupuestos", force: :cascade do |t|
    t.integer "numero",                 limit: 4,               null: false
    t.date    "fecha",                                          null: false
    t.integer "contacto_id",            limit: 4,               null: false
    t.integer "mantenim_oferta",        limit: 8,               null: false
    t.string  "observacion_imprimible", limit: 600
    t.string  "observacion_interna",    limit: 600
    t.integer "forma_de_pago_id",       limit: 8,               null: false
    t.integer "user_id",                limit: 4,               null: false
    t.integer "moneda_id",              limit: 4,               null: false
    t.integer "estado_presup_id",       limit: 4,   default: 1, null: false
  end

  add_index "presupuestos", ["numero"], name: "index_presupuestos_on_numero", using: :btree

  create_table "proveedores", force: :cascade do |t|
    t.string  "nombre",                  limit: 50,                                        null: false
    t.string  "direccion",               limit: 100,                                       null: false
    t.string  "direccion_deposito",      limit: 100
    t.string  "provincia",               limit: 50,                                        null: false
    t.string  "localidad",               limit: 50
    t.string  "ciudad",                  limit: 50
    t.string  "cod_postal",              limit: 20
    t.string  "pais",                    limit: 30,                                        null: false
    t.string  "identificacion_impuesto", limit: 30,                                        null: false
    t.string  "nombre_impuesto",         limit: 20,                                        null: false
    t.string  "telefono1",               limit: 20
    t.string  "telefono2",               limit: 20
    t.integer "moneda_id",               limit: 4,                           default: 1
    t.integer "unsigned",                limit: 4,                           default: 1
    t.decimal "descuento_gral",                      precision: 3, scale: 2, default: 0.0
    t.integer "forma_de_pago_id",        limit: 4
  end

  create_table "prueba_dev", primary_key: "idprueba", force: :cascade do |t|
    t.string  "nombre", limit: 45
    t.integer "edad",   limit: 4
  end

  add_index "prueba_dev", ["idprueba"], name: "idprueba_UNIQUE", unique: true, using: :btree

  create_table "recursos_presupuesto", force: :cascade do |t|
    t.integer "item_presupuesto_id",  limit: 4,                                          null: false
    t.string  "descripcion",          limit: 70,                                         null: false
    t.decimal "monto_unitario",                  precision: 19, scale: 2,                null: false
    t.float   "cantidad",             limit: 24,                                         null: false
    t.integer "unsigned",             limit: 4
    t.string  "modulo",               limit: 2,                           default: "UN", null: false
    t.integer "proveedor_id",         limit: 4
    t.string  "presup_proveedor",     limit: 40
    t.string  "observacion",          limit: 70
    t.decimal "peso_neto",                       precision: 19, scale: 2
    t.decimal "peso_bruto",                      precision: 19, scale: 2
    t.integer "categoria_recurso_id", limit: 4,                                          null: false
  end

  add_index "recursos_presupuesto", ["categoria_recurso_id"], name: "index_recursos_presupuesto_on_categoria_recurso_id", using: :btree
  add_index "recursos_presupuesto", ["item_presupuesto_id"], name: "index_recursos_presupuesto_on_item_presupuesto_id", using: :btree

  create_table "tratamientos", force: :cascade do |t|
    t.string "descripcion", limit: 10, null: false
  end

  create_table "unidades_medida", force: :cascade do |t|
    t.string "descripcion", limit: 255, null: false
    t.string "simbolo",     limit: 3,   null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "",    null: false
    t.string   "encrypted_password",     limit: 255, default: "",    null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                         null: false
    t.datetime "updated_at",                                         null: false
    t.string   "username",               limit: 255
    t.string   "nombre",                 limit: 50
    t.string   "apellido",               limit: 50
    t.string   "servidor_email_smtp",    limit: 100
    t.string   "email_usuario",          limit: 100
    t.string   "email_key",              limit: 50
    t.boolean  "admin",                  limit: 1,   default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
