namespace Wp4V {
    public class WpPostmetaRepository : Petitconn.Repository {
        public WpPostmetaRepository(Gda.Connection conn) {
            base(conn);
        }

        public Gee.List<WpPostmetaEntity?> select(WpPostmetaEntity condition) throws Error {
            var data = select_as_map(condition);
            var list = new Gee.ArrayList<WpPostmetaEntity?>();
            foreach (var item in data) {
                var dto = new WpPostmetaEntity();
                dto.set_values(item);
                list.add(dto);
            }
            return list;
        }
    }
}
