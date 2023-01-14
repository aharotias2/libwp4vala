namespace Wp4V {
    public class WpTermTaxonomyDto : Petitconn.ColumnSet {
        public long term_taxonomy_id {
            get {
                return this["term_taxonomy_id"].get_long();
            }
            set {
                this["term_taxonomy_id"] = Petitconn.ValueUtils.new_long_value(value);
            }
        }

        public long term_id {
            get {
                return this["term_id"].get_long();
            }
            set {
                this["term_id"] = Petitconn.ValueUtils.new_long_value(value);
            }
        }

        public string taxonomy {
            get {
                return this["taxonomy"].get_string();
            }
            set {
                this["taxonomy"] = Petitconn.ValueUtils.new_string_value(value);
            }
        }

        public string description {
            get {
                return this["description"].get_string();
            }
            set {
                this["description"] = Petitconn.ValueUtils.new_string_value(value);
            }
        }

        public long parent {
            get {
                return this["parent"].get_long();
            }
            set {
                this["parent"] = Petitconn.ValueUtils.new_long_value(value);
            }
        }

        public long count {
            get {
                return this["count"].get_long();
            }
            set {
                this["count"] = Petitconn.ValueUtils.new_long_value(value);
            }
        }

        public WpTermTaxonomyDto(bool use_default = false) {
            base("wp_term_taxonomy",
                "term_taxonomy_id", Type.LONG,
                "term_id", Type.LONG,
                "taxonomy", Type.STRING,
                "description", Type.STRING,
                "parent", Type.LONG,
                "count", Type.LONG
            );

            if (use_default) {
                term_taxonomy_id = 0;
                term_id = 0;
                taxonomy = "";
                description = "";
                parent = 0;
                count = 0;
            }
        }
    }
}
