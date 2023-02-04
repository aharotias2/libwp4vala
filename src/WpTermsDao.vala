namespace Wp4V {
    public class WpTermsDao : Petitconn.Dao {
        public WpTermsDao(Gda.Connection conn) {
            base(conn);
        }

        public Gee.List<WpTermsEntity?> select(WpTermsEntity condition) throws Error {
            var data = select_as_map(condition);
            Gee.List<WpTermsEntity?> list = new Gee.ArrayList<WpTermsEntity?>();
            foreach (var item in data) {
                var dto = new WpTermsEntity();
                dto.set_values(item);
                list.add(dto);
            }
            return list;
        }
    }
}
