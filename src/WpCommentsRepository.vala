namespace Wp4V {
    public class WpCommentsRepository : Petitconn.Repository {
        public WpCommentsRepository(Gda.Connection conn) {
            base(conn);
        }

        public Gee.List<WpCommentsEntity?> select(WpCommentsEntity condition) throws Error {
            var data = select_as_map(condition);
            var list = new Gee.ArrayList<WpCommentsEntity?>();
            foreach (var item in data) {
                var dto = new WpCommentsEntity();
                dto.set_values(item);
                list.add(dto);
            }
            return list;
        }
    }
}
