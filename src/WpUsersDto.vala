namespace Wp4V {
    public class WpUsersDto : Petitconn.ColumnSet {
        public long id {
            get {
                return this["ID"].get_long();
            }
            set {
                this["ID"] = Petitconn.ValueUtils.new_long_value(value);
            }
        }

        public string user_login {
            get {
                return this["user_login"].get_string();
            }
            set {
                this["user_login"] = Petitconn.ValueUtils.new_string_value(value);
            }
        }

        public string user_pass {
            get {
                return this["user_pass"].get_string();
            }
            set {
                this["user_pass"] = Petitconn.ValueUtils.new_string_value(value);
            }
        }

        public string user_nicename {
            get {
                return this["user_nicename"].get_string();
            }
            set {
                this["user_nicename"] = Petitconn.ValueUtils.new_string_value(value);
            }
        }

        public string user_email {
            get {
                return this["user_email"].get_string();
            }
            set {
                this["user_email"] = Petitconn.ValueUtils.new_string_value(value);
            }
        }

        public string user_url {
            get {
                return this["user_url"].get_string();
            }
            set {
                this["user_url"] = Petitconn.ValueUtils.new_string_value(value);
            }
        }

        public string user_registered {
            get {
                return this["user_registered"].get_string();
            }
            set {
                this["user_registered"] = Petitconn.ValueUtils.new_string_value(value);
            }
        }

        public long user_activation_key {
            get {
                return this["user_activation_key"].get_long();
            }
            set {
                this["user_activation_key"] = Petitconn.ValueUtils.new_long_value(value);
            }
        }

        public int user_status {
            get {
                return this["user_status"].get_int();
            }
            set {
                this["user_status"] = Petitconn.ValueUtils.new_int_value(value);
            }
        }

        public string display_name {
            get {
                return this["display_name"].get_string();
            }
            set {
                this["display_name"] = Petitconn.ValueUtils.new_string_value(value);
            }
        }

        public WpUsersDto(bool use_default = true) {
            base("wp_users",
                "ID", Type.LONG,
                "user_login", Type.STRING,
                "user_pass", Type.STRING,
                "user_nicename", Type.STRING,
                "user_email", Type.STRING,
                "user_url", Type.STRING,
                "user_registered", Type.STRING,
                "user_activation_key", Type.INT,
                "user_status", Type.STRING,
                "display_name", Type.STRING
            );
            if (use_default) {
                user_registered = "0000-00-00 00:00:00";
            }
        }
    }
}
