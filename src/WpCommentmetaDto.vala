namespace Wp4V {
    public class WpCommentmetaDto : Petitconn.ColumnSet {
        public long meta_id {
            get {
                return this["meta_id"].get_long();
            }
            set {
                this["meta_id"] = Petitconn.ValueUtils.new_long_value(value);
            }
        }

        public long comment_id {
            get {
                return this["comment_id"].get_long();
            }
            set {
                this["comment_id"] = Petitconn.ValueUtils.new_long_value(value);
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

        public WpCommentmetaDto(bool use_default = true) {
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
