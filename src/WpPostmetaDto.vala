using Petitconn;

namespace Wp4V {
    public class WpPostmetaDto : ColumnSet {
        public long meta_id {
            get {
                return ValueUtils.get_long_or_zero(this["meta_id"]);
            }
            set {
                this["meta_id"] = ValueUtils.new_long_value(value);
            }
        }

        public long post_id {
            get {
                return ValueUtils.get_long_or_zero(this["post_id"]);
            }
            set {
                this["post_id"] = ValueUtils.new_long_value(value);
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
