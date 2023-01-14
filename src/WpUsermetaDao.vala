namespace Wp4V {
    public class WpUsermetaDao : Petitconn.Dao {
        public WpUsermetaDao(Gda.Connection conn) {
            base(conn);
        }

        public Gee.List<WpUsermetaDto?> select(WpUsermetaDto condition) throws Error {
            var data = select_as_map(condition);
            var list = new Gee.ArrayList<WpUsermetaDto?>();
            foreach (var item in data) {
                var dto = new WpUsermetaDto();
                dto.set_values(item);
                list.add(dto);
            }
            return list;
        }
    }
}
