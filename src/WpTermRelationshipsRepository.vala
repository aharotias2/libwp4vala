namespace Wp4V {
    public class WpTermRelationshipsRepository : Petitconn.Repository {
        public WpTermRelationshipsRepository(Gda.Connection conn) {
            base(conn);
        }

        public Gee.List<WpTermRelationshipsEntity?> select(WpTermRelationshipsEntity condition) throws Error {
            var data = select_as_map(condition);
            var list = new Gee.ArrayList<WpTermRelationshipsEntity?>();
            foreach (var item in data) {
                var dto = new WpTermRelationshipsEntity();
                dto.set_values(item);
                list.add(dto);
            }
            return list;
        }
    }
}
