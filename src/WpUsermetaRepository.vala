namespace Wp4V {
    public class WpUsermetaRepository : Petitconn.Repository {
        public WpUsermetaRepository(Gda.Connection conn) {
            base(conn);
        }

        public Gee.List<WpUsermetaEntity?> select(WpUsermetaEntity condition) throws Error {
            var data = select_as_map(condition);
            var list = new Gee.ArrayList<WpUsermetaEntity?>();
            foreach (var item in data) {
                var dto = new WpUsermetaEntity();
                dto.set_values(item);
                list.add(dto);
            }
            return list;
        }
    }
}
