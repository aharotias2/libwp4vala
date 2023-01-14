using Wp4V;

public class WpUsersDao : Petitconn.Dao {
    public WpUsersDao(Gda.Connection conn) {
        base(conn);
    }
    
    public Gee.List<WpUsersDto?> select(WpUsersDto condition) throws Error {
        var data = select_as_map(condition);
        var list = new Gee.ArrayList<WpUsersDto?>();
        foreach (var item in data) {
            var dto = new WpUsersDto();
            dto.set_values(item);
            list.add(dto);
        }
        return list;
    }
}
