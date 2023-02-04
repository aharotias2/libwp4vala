using Petitconn;

namespace Wp4V {
    public class WpCommentmetaEntity : ColumnSet {
        public long meta_id {
            get {
                return ValueUtils.get_long_or_zero(this["meta_id"]);
            }
            set {
                this["meta_id"] = ValueUtils.new_long_value(value);
            }
        }

        public long comment_id {
            get {
                return ValueUtils.get_long_or_zero(this["comment_id"]);
            }
            set {
                this["comment_id"] = ValueUtils.new_long_value(value);
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

        public WpCommentmetaEntity(bool use_default = false) {
            base("wp_commentmeta", "meta_id", Type.LONG, "comment_id", Type.LONG,
                    "meta_key", Type.STRING, "meta_value", Type.STRING);
            if (use_default) {
                meta_id = 0;
                comment_id = 0;
                meta_key = null;
                meta_value = null;
            }
        }
    }
}
