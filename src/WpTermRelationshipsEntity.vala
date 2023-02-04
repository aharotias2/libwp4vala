using Petitconn;

namespace Wp4V {
    public class WpTermRelationshipsEntity : ColumnSet {
        public long object_id {
            get {
                return ValueUtils.get_long_or_zero(this["object_id"]);
            }
            set {
                this["object_id"] = ValueUtils.new_long_value(value);
            }
        }

        public long term_taxonomy_id {
            get {
                return ValueUtils.get_long_or_zero(this["term_taxonomy_id"]);
            }
            set {
                this["term_taxonomy_id"] = ValueUtils.new_long_value(value);
            }
        }

        public int term_order {
            get {
                return ValueUtils.get_int_or_zero(this["term_order"]);
            }
            set {
                this["term_order"] = ValueUtils.new_int_value(value);
            }
        }

        public WpTermRelationshipsEntity(bool use_default = false) {
            base("wp_term_relationships",
                "object_id", Type.LONG,
                "term_taxonomy_id", Type.LONG,
                "term_order", Type.INT
            );

            if (use_default) {
                object_id = 0;
                term_taxonomy_id = 0;
                term_order = 0;
            }
        }
    }
}
