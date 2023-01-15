using Petitconn;

namespace Wp4V {
    public class WpUsermetaDto : ColumnSet {
        public long umeta_id {
            get {
                return ValueUtils.get_long_or_zero(this["umeta_id"]);
            }
            set {
                this["umeta_id"] = ValueUtils.new_long_value(value);
            }
        }

        public long user_id {
            get {
                return ValueUtils.get_long_or_zero(this["user_id"]);
            }
            set {
                this["user_id"] = ValueUtils.new_long_value(value);
            }
        }

        public string? meta_key {
            owned get {
                return ValueUtils.get_string_or_null(this["meta_key"]);
            }
            set {
                this["meta_key"] = ValueUtils.new_string_value(value);
            }
        }

        public string? meta_value {
            owned get {
                return ValueUtils.get_string_or_null(this["meta_value"]);
            }
            set {
                this["meta_value"] = ValueUtils.new_string_value(value);
            }
        }

        public WpUsermetaDto() {
            base("wp_usermeta",
                "umeta_id", Type.LONG,
                "user_id", Type.LONG,
                "meta_key", Type.STRING,
                "meta_value", Type.STRING
            );
        }
    }
}
