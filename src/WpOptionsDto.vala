namespace Wp4V {
    public class WpOptionsDto : Petitconn.ColumnSet {
        public long option_id {
            get {
                return this["option_id"].get_long();
            }
            set {
                this["option_id"] = Petitconn.ValueUtils.new_long_value(value);
            }
        }

        public string? option_name {
            owned get {
                return this["option_name"].get_string();
            }
            set {
                this["option_name"] = Petitconn.ValueUtils.new_string_value(value);
            }
        }

        public string? option_value {
            owned get {
                return this["option_value"].get_string();
            }
            set {
                this["option_value"] = Petitconn.ValueUtils.new_string_value(value);
            }
        }

        public string? autoload {
            owned get {
                return this["autoload"].get_string();
            }
            set {
                this["autoload"] = Petitconn.ValueUtils.new_string_value(value);
            }
        }

        public WpOptionsDto(bool use_default = true) {
            base("wp_options",
                "option_id", Type.LONG,
                "option_name", Type.STRING,
                "option_value", Type.STRING,
                "autoload", Type.STRING
            );

            if (use_default) {
                autoload = "yes";
            }
        }
    }
}
