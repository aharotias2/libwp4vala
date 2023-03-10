namespace Wp4V {
    public class WpPostsRepository : Petitconn.Repository {
        public WpPostsRepository(Gda.Connection conn) {
            base(conn);
        }

        public Gee.List<WpPostsEntity?> select(WpPostsEntity condition) throws Error {
            var data = select_as_map(condition);
            var list = new Gee.ArrayList<WpPostsEntity?>();
            foreach (var item in data) {
                var dto = new WpPostsEntity();
                dto.set_values(item);
                list.add(dto);
            }
            return list;
        }

        public long get_max_post_id() throws Error {
            var model = conn.execute_select_command("SELECT MAX(ID) FROM wp_posts");
            if (model.get_n_rows() > 0 && model.get_n_columns() > 0) {
                var val = model.get_value_at(0, 0);
                return val.get_long();
            } else {
                throw new WpError.DATA_ERROR("The empty model of get_max_post_id.");
            }
        }

        public long get_next_id() throws Error {
            var model = conn.execute_select_command(
                    "SELECT AUTO_INCREMENT FROM information_schema.TABLES "
                    + "WHERE TABLE_SCHEMA = 'wordpress' AND TABLE_NAME = 'wp_posts'");
            var val =  model.get_value_at(0, 0);
            return val.get_long();
        }
    }
}
