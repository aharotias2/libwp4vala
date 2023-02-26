namespace Wp4V {
    public class WpTermTaxonomyRepository : Petitconn.Repository {
        public WpTermTaxonomyRepository(Gda.Connection conn) {
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
