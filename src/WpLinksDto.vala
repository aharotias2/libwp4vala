namespace Wp4V {
    public class WpLinksDto : Petitconn.ColumnSet {
        public long link_id {
            get {
                return this["link_id"].get_long();
            }
            set {
                this["link_id"] = Petitconn.ValueUtils.new_long_value(value);
            }
        }

        public string link_url {
            get {
                return this["link_url"].get_string();
            }
            set {
                this["link_url"] = Petitconn.ValueUtils.new_string_value(value);
            }
        }

        public string link_name {
            get {
                return this["link_name"].get_string();
            }
            set {
                this["link_name"] = Petitconn.ValueUtils.new_string_value(value);
            }
        }

        public string link_image {
            get {
                return this["link_image"].get_string();
            }
            set {
                this["link_image"] = Petitconn.ValueUtils.new_string_value(value);
            }
        }

        public string link_target {
            get {
                return this["link_target"].get_string();
            }
            set {
                this["link_target"] = Petitconn.ValueUtils.new_string_value(value);
            }
        }

        public string link_description {
            get {
                return this["link_description"].get_string();
            }
            set {
                this["link_description"] = Petitconn.ValueUtils.new_string_value(value);
            }
        }

        public string link_visible {
            get {
                return this["link_visible"].get_string();
            }
            set {
                this["link_visible"] = Petitconn.ValueUtils.new_string_value(value);
            }
        }

        public long link_owner {
            get {
                return this["link_owner"].get_long();
            }
            set {
                this["link_owner"] = Petitconn.ValueUtils.new_long_value(value);
            }
        }

        public int link_rating {
            get {
                return this["link_rating"].get_int();
            }
            set {
                this["link_rating"] = Petitconn.ValueUtils.new_int_value(value);
            }
        }

        public string link_updated {
            get {
                return this["link_updated"].get_string();
            }
            set {
                this["link_updated"] = Petitconn.ValueUtils.new_string_value(value);
            }
        }

        public string link_rel {
            get {
                return this["link_rel"].get_string();
            }
            set {
                this["link_rel"] = Petitconn.ValueUtils.new_string_value(value);
            }
        }

        public string link_notes {
            get {
                return this["link_notes"].get_string();
            }
            set {
                this["link_notes"] = Petitconn.ValueUtils.new_string_value(value);
            }
        }

        public string link_rss {
            get {
                return this["link_rss"].get_string();
            }
            set {
                this["link_rss"] = Petitconn.ValueUtils.new_string_value(value);
            }
        }

        public WpLinksDto(bool use_default = true) {
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
