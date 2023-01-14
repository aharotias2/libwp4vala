using Wp4V;

public class WpTermTaxonomyDao : Petitconn.Dao {
    public WpTermTaxonomyDao(Gda.Connection conn) {
        base(conn);
    }
    
    public Gee.List<WpTermTaxonomyDto?> select(WpTermTaxonomyDto condition) throws Error {
        var data = select_as_map(condition);
        var list = new Gee.ArrayList<WpTermTaxonomyDto?>();
        foreach (var item in data) {
            var dto = new WpTermTaxonomyDto();
            dto.set_values(item);
            list.add(dto);
        }
        return list;
    }
}
