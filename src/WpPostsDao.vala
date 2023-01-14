using Wp4V;

public class WpPostsDao : Petitconn.Dao {
    public WpPostsDao(Gda.Connection conn) {
        base(conn);
    }
    
    public Gee.List<WpPostsDto?> select(WpPostsDto condition) throws Error {
        var data = select_as_map(condition);
        var list = new Gee.ArrayList<WpPostsDto?>();
        foreach (var item in data) {
            var dto = new WpPostsDto();
            dto.set_values(item);
            list.add(dto);
        }
        return list;
    }
    
    public long get_max_post_id() throws Error {
        var model = conn.execute_select_command("SELECT MAX(ID) FROM wp_posts");
        var val = model.get_value_at(0, 0);
        return val.get_long();
    }
    
    public long get_next_id() throws Error {
        var model = conn.execute_select_command(
                "SELECT AUTO_INCREMENT FROM information_schema.TABLES "
                + "WHERE TABLE_SCHEMA = 'wordpress' AND TABLE_NAME = 'wp_posts'");
        var val =  model.get_value_at(0, 0);
        return val.get_long();
    }
}
