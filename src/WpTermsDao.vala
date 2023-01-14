namespace Wp4V {
    public class WpTermsDao : Petitconn.Dao {
        public WpTermsDao(Gda.Connection conn) {
            base(conn);
        }

        public Gee.List<WpTermsDto?> select(WpTermsDto condition) throws Error {
            var data = select_as_map(condition);
            Gee.List<WpTermsDto?> list = new Gee.ArrayList<WpTermsDto?>();
            foreach (var item in data) {
                var dto = new WpTermsDto();
                dto.set_values(item);
                list.add(dto);
            }
            return list;
        }
    }
}
