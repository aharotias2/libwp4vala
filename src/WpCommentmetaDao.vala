namespace Wp4V {
    public class WpCommentmetaDao : Petitconn.Dao {
        public WpCommentmetaDao(Gda.Connection conn) {
            base(conn);
        }

        public Gee.List<WpCommentmetaDto?> select(WpCommentmetaDto condition) throws Error {
            var data = select_as_map(condition);
            var list = new Gee.ArrayList<WpCommentmetaDto?>();
            foreach (var item in data) {
                var dto = new WpCommentmetaDto();
                dto.set_values(item);
                list.add(dto);
            }
            return list;
        }
    }
}
