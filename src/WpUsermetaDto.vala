namespace Wp4V {
    public class WpUsermetaDto : Petitconn.ColumnSet {
        public long umeta_id {
            get {
                return this["umeta_id"].get_long();
            }
            set {
                this["umeta_id"] = Petitconn.ValueUtils.new_long_value(value);
            }
        }

        public long user_id {
            get {
                return this["user_id"].get_long();
            }
            set {
                this["user_id"] = Petitconn.ValueUtils.new_long_value(value);
            }
        }

        public string? meta_key {
            owned get {
                return this["meta_key"].get_string();
            }
            set {
                this["meta_key"] = Petitconn.ValueUtils.new_string_value(value);
            }
        }

        public string? meta_value {
            owned get {
                return this["meta_value"].get_string();
            }
            set {
                this["meta_value"] = Petitconn.ValueUtils.new_string_value(value);
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
