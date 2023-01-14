namespace Wp4V {
    public class WpTermsDto : Petitconn.ColumnSet {
        public long term_id {
            get {
                return this["term_id"].get_long();
            }
            set {
                this["term_id"] = Petitconn.ValueUtils.new_long_value(value);
            }
        }

        public string name {
            owned get {
                return this["name"].get_string();
            }
            set {
                this["name"] = Petitconn.ValueUtils.new_string_value(value);
            }
        }

        public string slug {
            owned get {
                return this["slug"].get_string();
            }
            set {
                this["slug"] = Petitconn.ValueUtils.new_string_value(value);
            }
        }

        public long term_group {
            get {
                return this["term_group"].get_long();
            }
            set {
                this["term_group"] = Petitconn.ValueUtils.new_long_value(value);
            }
        }

        public WpTermsDto(bool use_default = false) {
            base("wp_terms",
                "term_id", Type.LONG,
                "name", Type.STRING,
                "slug", Type.STRING,
                "term_group", Type.LONG
            );

            if (use_default) {
                term_id = 0;
                name = "";
                slug = "";
                term_group = 0;
            }
        }
    }
}
