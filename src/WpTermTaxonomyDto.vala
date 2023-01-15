using Petitconn;

namespace Wp4V {
    public class WpTermTaxonomyDto : ColumnSet {
        public long term_taxonomy_id {
            get {
                return ValueUtils.get_long_or_zero(this["term_taxonomy_id"]);
            }
            set {
                this["term_taxonomy_id"] = ValueUtils.new_long_value(value);
            }
        }

        public long term_id {
            get {
                return ValueUtils.get_long_or_zero(this["term_id"]);
            }
            set {
                this["term_id"] = ValueUtils.new_long_value(value);
            }
        }

        public string? taxonomy {
            owned get {
                return ValueUtils.get_string_or_null(this["taxonomy"]);
            }
            set {
                this["taxonomy"] = ValueUtils.new_string_value(value);
            }
        }

        public string? description {
            owned get {
                return ValueUtils.get_string_or_null(this["description"]);
            }
            set {
                this["description"] = ValueUtils.new_string_value(value);
            }
        }

        public long parent {
            get {
                return ValueUtils.get_long_or_zero(this["parent"]);
            }
            set {
                this["parent"] = ValueUtils.new_long_value(value);
            }
        }

        public long count {
            get {
                return ValueUtils.get_long_or_zero(this["count"]);
            }
            set {
                this["count"] = ValueUtils.new_long_value(value);
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
