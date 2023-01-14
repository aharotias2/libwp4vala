using Wp4V;

public class WpTermRelationshipsDao : Petitconn.Dao {
    public WpTermRelationshipsDao(Gda.Connection conn) {
        base(conn);
    }
    
    public Gee.List<WpTermRelationshipsDto?> select(WpTermRelationshipsDto condition) throws Error {
        var data = select_as_map(condition);
        var list = new Gee.ArrayList<WpTermRelationshipsDto?>();
        foreach (var item in data) {
            var dto = new WpTermRelationshipsDto();
            dto.set_values(item);
            list.add(dto);
        }
        return list;
    }
}
