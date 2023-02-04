namespace Wp4V {
    public class WpTermTaxonomyDao : Petitconn.Dao {
        public WpTermTaxonomyDao(Gda.Connection conn) {
            base(conn);
        }

        public Gee.List<WpTermTaxonomyEntity?> select(WpTermTaxonomyEntity condition) throws Error {
            var data = select_as_map(condition);
            var list = new Gee.ArrayList<WpTermTaxonomyEntity?>();
            foreach (var item in data) {
                var dto = new WpTermTaxonomyEntity();
                dto.set_values(item);
                list.add(dto);
            }
            return list;
        }
    }
}
