using Wp4V;

public class WpPostmetaDao : Petitconn.Dao {
    public WpPostmetaDao(Gda.Connection conn) {
        base(conn);
    }
    
    public Gee.List<WpPostmetaDto?> select(WpPostmetaDto condition) throws Error {
        var data = select_as_map(condition);
        var list = new Gee.ArrayList<WpPostmetaDto?>();
        foreach (var item in data) {
            var dto = new WpPostmetaDto();
            dto.set_values(item);
            list.add(dto);
        }
        return list;
    }
}
