using Petitconn;

namespace Wp4V {
    public class WpLinksDto : ColumnSet {
        public long link_id {
            get {
                return ValueUtils.get_long_or_zero(this["link_id"]);
            }
            set {
                this["link_id"] = ValueUtils.new_long_value(value);
            }
        }

        public string? link_url {
            owned get {
                return ValueUtils.get_string_or_null(this["link_url"]);
            }
            set {
                this["link_url"] = ValueUtils.new_string_value(value);
            }
        }

        public string? link_name {
            owned get {
                return ValueUtils.get_string_or_null(this["link_name"]);
            }
            set {
                this["link_name"] = ValueUtils.new_string_value(value);
            }
        }

        public string? link_image {
            owned get {
                return ValueUtils.get_string_or_null(this["link_image"]);
            }
            set {
                this["link_image"] = ValueUtils.new_string_value(value);
            }
        }

        public string? link_target {
            owned get {
                return ValueUtils.get_string_or_null(this["link_target"]);
            }
            set {
                this["link_target"] = ValueUtils.new_string_value(value);
            }
        }

        public string? link_description {
            owned get {
                return ValueUtils.get_string_or_null(this["link_description"]);
            }
            set {
                this["link_description"] = ValueUtils.new_string_value(value);
            }
        }

        public string? link_visible {
            owned get {
                return ValueUtils.get_string_or_null(this["link_visible"]);
            }
            set {
                this["link_visible"] = ValueUtils.new_string_value(value);
            }
        }

        public long link_owner {
            get {
                return ValueUtils.get_long_or_zero(this["link_owner"]);
            }
            set {
                this["link_owner"] = ValueUtils.new_long_value(value);
            }
        }

        public int link_rating {
            get {
                return ValueUtils.get_int_or_zero(this["link_rating"]);
            }
            set {
                this["link_rating"] = ValueUtils.new_int_value(value);
            }
        }

        public string? link_updated {
            owned get {
                return ValueUtils.get_string_or_null(this["link_updated"]);
            }
            set {
                this["link_updated"] = ValueUtils.new_string_value(value);
            }
        }

        public string? link_rel {
            owned get {
                return ValueUtils.get_string_or_null(this["link_rel"]);
            }
            set {
                this["link_rel"] = ValueUtils.new_string_value(value);
            }
        }

        public string? link_notes {
            owned get {
                return ValueUtils.get_string_or_null(this["link_notes"]);
            }
            set {
                this["link_notes"] = ValueUtils.new_string_value(value);
            }
        }

        public string? link_rss {
            owned get {
                return ValueUtils.get_string_or_null(this["link_rss"]);
            }
            set {
                this["link_rss"] = ValueUtils.new_string_value(value);
            }
        }

        public WpLinksDto(bool use_default = false) {
            base("wp_links",
                "link_id", Type.LONG,
                "link_url", Type.STRING,
                "link_name", Type.STRING,
                "link_image", Type.STRING,
                "link_target", Type.STRING,
                "link_description", Type.STRING,
                "link_visible", Type.STRING,
                "link_owner", Type.LONG,
                "link_rating", Type.INT,
                "link_updated", Type.STRING,
                "link_rel", Type.STRING,
                "link_notes", Type.STRING,
                "link_rss", Type.STRING
            );
            if (use_default) {
                link_visible = "Y";
                link_owner = (long) 1;
                link_rating = 0;
                link_updated = "0000-00-00 00:00:00";
            }
        }
    }
}
