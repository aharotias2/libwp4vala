namespace Wp4V {
    public class WpTermRelationshipsDto : Petitconn.ColumnSet {
        public long object_id {
            get {
                return this["object_id"].get_long();
            }
            set {
                this["object_id"] = Petitconn.ValueUtils.new_long_value(value);
            }
        }

        public long term_taxonomy_id {
            get {
                return this["term_taxonomy_id"].get_long();
            }
            set {
                this["term_taxonomy_id"] = Petitconn.ValueUtils.new_long_value(value);
            }
        }

        public int term_order {
            get {
                return this["term_order"].get_int();
            }
            set {
                this["term_order"] = Petitconn.ValueUtils.new_int_value(value);
            }
        }

        public WpTermRelationshipsDto(bool use_default = false) {
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
