using Wp4V;

public class WpOptionsDao : Petitconn.Dao {
    public WpOptionsDao(Gda.Connection conn) {
        base(conn);
    }
    
    public Gee.List<WpOptionsDto?> select(WpOptionsDto condition) throws Error {
        var data = select_as_map(condition);
        var list = new Gee.ArrayList<WpOptionsDto?>();
        foreach (var item in data) {
            var dto = new WpOptionsDto();
            dto.set_values(item);
            list.add(dto);
        }
        return list;
    }
}
