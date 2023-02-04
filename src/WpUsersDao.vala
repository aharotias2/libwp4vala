namespace Wp4V {
    public class WpUsersDao : Petitconn.Dao {
        public WpUsersDao(Gda.Connection conn) {
            base(conn);
        }

        public Gee.List<WpUsersEntity?> select(WpUsersEntity condition) throws Error {
            var data = select_as_map(condition);
            var list = new Gee.ArrayList<WpUsersEntity?>();
            foreach (var item in data) {
                var dto = new WpUsersEntity();
                dto.set_values(item);
                list.add(dto);
            }
            return list;
        }
    }
}
