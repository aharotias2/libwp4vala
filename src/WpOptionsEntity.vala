using Petitconn;

namespace Wp4V {
    public class WpOptionsEntity : ColumnSet {
        public long option_id {
            get {
                return ValueUtils.get_long_or_zero(this["option_id"]);
            }
            set {
                this["option_id"] = ValueUtils.new_long_value(value);
            }
        }

        public string? option_name {
            owned get {
                return ValueUtils.get_string_or_null(this["option_name"]);
            }
            set {
                this["option_name"] = ValueUtils.new_string_value(value);
            }
        }

        public string? option_value {
            owned get {
                return ValueUtils.get_string_or_null(this["option_value"]);
            }
            set {
                this["option_value"] = ValueUtils.new_string_value(value);
            }
        }

        public string? autoload {
            owned get {
                return ValueUtils.get_string_or_null(this["autoload"]);
            }
            set {
                this["autoload"] = ValueUtils.new_string_value(value);
            }
        }

        public WpOptionsEntity(bool use_default = false) {
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
