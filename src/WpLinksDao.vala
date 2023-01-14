namespace Wp4V {
    public class WpLinksDao : Petitconn.Dao {
        public WpLinksDao(Gda.Connection conn) {
            base(conn);
        }

        public Gee.List<WpLinksDto?> select(WpLinksDto condition) throws Error {
            var data = select_as_map(condition);
            var list = new Gee.ArrayList<WpLinksDto?>();
            foreach (var item in data) {
                var dto = new WpLinksDto();
                dto.set_values(item);
                list.add(dto);
            }
            return list;
        }
    }
}
