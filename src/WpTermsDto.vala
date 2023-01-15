using Petitconn;

namespace Wp4V {
    public class WpTermsDto : ColumnSet {
        public long term_id {
            get {
                return ValueUtils.get_long_or_zero(this["term_id"]);
            }
            set {
                this["term_id"] = ValueUtils.new_long_value(value);
            }
        }

        public string? name {
            owned get {
                return ValueUtils.get_string_or_null(this["name"]);
            }
            set {
                this["name"] = ValueUtils.new_string_value(value);
            }
        }

        public string? slug {
            owned get {
                return ValueUtils.get_string_or_null(this["slug"]);
            }
            set {
                this["slug"] = ValueUtils.new_string_value(value);
            }
        }

        public long term_group {
            get {
                return ValueUtils.get_long_or_zero(this["term_group"]);
            }
            set {
                this["term_group"] = ValueUtils.new_long_value(value);
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
