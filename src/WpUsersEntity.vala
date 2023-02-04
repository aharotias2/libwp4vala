using Petitconn;

namespace Wp4V {
    public class WpUsersEntity : ColumnSet {
        public long id {
            get {
                return ValueUtils.get_long_or_zero(this["ID"]);
            }
            set {
                this["ID"] = ValueUtils.new_long_value(value);
            }
        }

        public string? user_login {
            owned get {
                return ValueUtils.get_string_or_null(this["user_login"]);
            }
            set {
                this["user_login"] = ValueUtils.new_string_value(value);
            }
        }

        public string? user_pass {
            owned get {
                return ValueUtils.get_string_or_null(this["user_pass"]);
            }
            set {
                this["user_pass"] = ValueUtils.new_string_value(value);
            }
        }

        public string? user_nicename {
            owned get {
                return ValueUtils.get_string_or_null(this["user_nicename"]);
            }
            set {
                this["user_nicename"] = ValueUtils.new_string_value(value);
            }
        }

        public string? user_email {
            owned get {
                return ValueUtils.get_string_or_null(this["user_email"]);
            }
            set {
                this["user_email"] = ValueUtils.new_string_value(value);
            }
        }

        public string? user_url {
            owned get {
                return ValueUtils.get_string_or_null(this["user_url"]);
            }
            set {
                this["user_url"] = ValueUtils.new_string_value(value);
            }
        }

        public string? user_registered {
            owned get {
                return ValueUtils.get_string_or_null(this["user_registered"]);
            }
            set {
                this["user_registered"] = ValueUtils.new_string_value(value);
            }
        }

        public long user_activation_key {
            get {
                return ValueUtils.get_long_or_zero(this["user_activation_key"]);
            }
            set {
                this["user_activation_key"] = ValueUtils.new_long_value(value);
            }
        }

        public int user_status {
            get {
                return ValueUtils.get_int_or_zero(this["user_status"]);
            }
            set {
                this["user_status"] = ValueUtils.new_int_value(value);
            }
        }

        public string? display_name {
            owned get {
                return ValueUtils.get_string_or_null(this["display_name"]);
            }
            set {
                this["display_name"] = ValueUtils.new_string_value(value);
            }
        }

        public WpUsersEntity(bool use_default = false) {
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
