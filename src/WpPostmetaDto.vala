namespace Wp4V {
    public class WpPostmetaDto : Petitconn.ColumnSet {
        public long meta_id {
            get {
                return this["meta_id"].get_long();
            }
            set {
                this["meta_id"] = Petitconn.ValueUtils.new_long_value(value);
            }
        }

        public long post_id {
            get {
                return this["post_id"].get_long();
            }
            set {
                this["post_id"] = Petitconn.ValueUtils.new_long_value(value);
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

        public WpPostmetaDto() {
            base("wp_postmeta",
                "meta_id", Type.LONG,
                "post_id", Type.LONG,
                "meta_key", Type.STRING,
                "meta_value", Type.STRING
            );
        }
    }
}
