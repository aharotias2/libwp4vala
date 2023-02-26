namespace Wp4V {
    public class WpOptionsRepository : Petitconn.Repository {
        public WpOptionsRepository(Gda.Connection conn) {
            base(conn);
        }

        public Gee.List<WpOptionsEntity?> select(WpOptionsEntity condition) throws Error {
            var data = select_as_map(condition);
            var list = new Gee.ArrayList<WpOptionsEntity?>();
            foreach (var item in data) {
                var dto = new WpOptionsEntity();
                dto.set_values(item);
                list.add(dto);
            }
            return list;
        }
    }
}
