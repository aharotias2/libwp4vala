using Wp4V;

public class WpCommentsDao : Petitconn.Dao {
    public WpCommentsDao(Gda.Connection conn) {
        base(conn);
    }
    
    public Gee.List<WpCommentsDto?> select(WpCommentsDto condition) throws Error {
        var data = select_as_map(condition);
        var list = new Gee.ArrayList<WpCommentsDto?>();
        foreach (var item in data) {
            var dto = new WpCommentsDto();
            dto.set_values(item);
            list.add(dto);
        }
        return list;
    }
}
