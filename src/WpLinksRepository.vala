namespace Wp4V {
    public class WpLinksRepository : Petitconn.Repository {
        public WpLinksRepository(Gda.Connection conn) {
            base(conn);
        }

        public Gee.List<WpLinksEntity?> select(WpLinksEntity condition) throws Error {
            var data = select_as_map(condition);
            var list = new Gee.ArrayList<WpLinksEntity?>();
            foreach (var item in data) {
                var dto = new WpLinksEntity();
                dto.set_values(item);
                list.add(dto);
            }
            return list;
        }
    }
}
