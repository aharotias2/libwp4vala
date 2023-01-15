using Petitconn;

namespace Wp4V {
    public class WpPostsDto : ColumnSet {
        public long id {
            get {
                return ValueUtils.get_long_or_zero(column_values["ID"]);
            }
            set {
                column_values["ID"] = ValueUtils.new_long_value(value);
            }
        }

        public long post_author {
            get {
                return ValueUtils.get_long_or_zero(column_values["post_author"]);
            }
            set {
                column_values["post_author"] = ValueUtils.new_long_value(value);
            }
        }

        public string? post_date {
            owned get {
                return ValueUtils.get_string_or_null(column_values["post_date"]);
            }
            set {
                column_values["post_date"] = ValueUtils.new_string_value(value);
            }
        }

        public string? post_date_gmt {
            owned get {
                return ValueUtils.get_string_or_null(column_values["post_date_gmt"]);
            }
            set {
                column_values["post_date_gmt"] = ValueUtils.new_string_value(value);
            }
        }

        public string? post_content {
            owned get {
                return ValueUtils.get_string_or_null(column_values["post_content"]);
            }
            set {
                column_values["post_content"] = ValueUtils.new_string_value(value);
            }
        }

        public string? post_title {
            owned get {
                return ValueUtils.get_string_or_null(column_values["post_title"]);
            }
            set {
                column_values["post_title"] = ValueUtils.new_string_value(value);
            }
        }

        public string? post_excerpt {
            owned get {
                return ValueUtils.get_string_or_null(column_values["post_excerpt"]);
            }
            set {
                column_values["post_excerpt"] = ValueUtils.new_string_value(value);
            }
        }

        public string? post_status {
            owned get {
                return ValueUtils.get_string_or_null(column_values["post_status"]);
            }
            set {
                column_values["post_status"] = ValueUtils.new_string_value(value);
            }
        }

        public string? comment_status {
            owned get {
                return ValueUtils.get_string_or_null(column_values["comment_status"]);
            }
            set {
                column_values["comment_status"] = ValueUtils.new_string_value(value);
            }
        }

        public string? ping_status {
            owned get {
                return ValueUtils.get_string_or_null(column_values["ping_status"]);
            }
            set {
                column_values["ping_status"] = ValueUtils.new_string_value(value);
            }
        }

        public string? post_password {
            owned get {
                return ValueUtils.get_string_or_null(column_values["post_password"]);
            }
            set {
                column_values["post_password"] = ValueUtils.new_string_value(value);
            }
        }

        public string? post_name {
            owned get {
                return ValueUtils.get_string_or_null(column_values["post_name"]);
            }
            set {
                column_values["post_name"] = ValueUtils.new_string_value(value);
            }
        }

        public string? to_ping {
            owned get {
                return ValueUtils.get_string_or_null(column_values["to_ping"]);
            }
            set {
                column_values["to_ping"] = ValueUtils.new_string_value(value);
            }
        }

        public string? pinged {
            owned get {
                return ValueUtils.get_string_or_null(column_values["pinged"]);
            }
            set {
                column_values["pinged"] = ValueUtils.new_string_value(value);
            }
        }

        public string? post_modified {
            owned get {
                return ValueUtils.get_string_or_null(column_values["post_modified"]);
            }
            set {
                column_values["post_modified"] = ValueUtils.new_string_value(value);
            }
        }

        public string? post_modified_gmt {
            owned get {
                return ValueUtils.get_string_or_null(column_values["post_modified_gmt"]);
            }
            set {
                column_values["post_modified_gmt"] = ValueUtils.new_string_value(value);
            }
        }

        public string? post_content_filtered {
            owned get {
                return ValueUtils.get_string_or_null(column_values["post_content_filtered"]);
            }
            set {
                column_values["post_content_filtered"] = ValueUtils.new_string_value(value);
            }
        }

        public long post_parent {
            get {
                return ValueUtils.get_long_or_zero(column_values["post_parent"]);
            }
            set {
                column_values["post_parent"] = ValueUtils.new_long_value(value);
            }
        }

        public string? guid {
            owned get {
                return ValueUtils.get_string_or_null(column_values["guid"]);
            }
            set {
                column_values["guid"] = ValueUtils.new_string_value(value);
            }
        }

        public int menu_order {
            get {
                return ValueUtils.get_int_or_zero(column_values["menu_order"]);
            }
            set {
                column_values["menu_order"] = ValueUtils.new_int_value(value);
            }
        }

        public string? post_type {
            owned get {
                return ValueUtils.get_string_or_null(column_values["post_type"]);
            }
            set {
                column_values["post_type"] = ValueUtils.new_string_value(value);
            }
        }

        public string? post_mime_type {
            owned get {
                return ValueUtils.get_string_or_null(column_values["post_mime_type"]);
            }
            set {
                column_values["post_mime_type"] = ValueUtils.new_string_value(value);
            }
        }

        public long comment_count {
            get {
                return ValueUtils.get_long_or_zero(column_values["comment_count"]);
            }
            set {
                column_values["comment_count"] = ValueUtils.new_long_value(value);
            }
        }

        public WpPostsDto(bool use_default = false) {
            base("wp_posts",
                "ID", Type.LONG,
                "post_author", Type.STRING,
                "post_date", Type.STRING,
                "post_date_gmt", Type.STRING,
                "post_content", Type.STRING,
                "post_title", Type.STRING,
                "post_excerpt", Type.STRING,
                "post_status", Type.STRING,
                "comment_status", Type.STRING,
                "ping_status", Type.STRING,
                "post_password", Type.STRING,
                "post_name", Type.STRING,
                "to_ping", Type.STRING,
                "pinged", Type.STRING,
                "post_modified", Type.STRING,
                "post_modified_gmt", Type.STRING,
                "post_content_filtered", Type.STRING,
                "post_parent", Type.LONG,
                "guid", Type.STRING,
                "menu_order", Type.INT,
                "post_type", Type.STRING,
                "post_mime_type", Type.STRING,
                "comment_count", Type.LONG
            );

            if (use_default) {
                id = 0;
                post_author = 0;
                post_date = "0000-00-00 00:00:00";
                post_date_gmt = "0000-00-00 00:00:00";
                post_content = "";
                post_title = "";
                post_excerpt = "";
                post_status = "publish";
                comment_status = "open";
                ping_status = "open";
                post_password = "";
                post_name = "";
                to_ping = "";
                pinged = "";
                post_modified = "0000-00-00 00:00:00";
                post_modified_gmt = "0000-00-00 00:00:00";
                post_content_filtered = "";
                post_parent = 0;
                guid = "";
                menu_order = 0;
                post_type = "post";
                post_mime_type = "";
                comment_count = 0;
            }
        }
    }
}
