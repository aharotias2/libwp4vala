namespace Wp4V {
    public class WpPostsDto : Petitconn.ColumnSet {
        public long id {
            get {
                return column_values["ID"].get_long();
            }
            set {
                column_values["ID"] = Petitconn.ValueUtils.new_long_value(value);
            }
        }

        public long post_author {
            get {
                return column_values["post_author"].get_long();
            }
            set {
                column_values["post_author"] = Petitconn.ValueUtils.new_long_value(value);
            }
        }

        public string post_date {
            owned get {
                return column_values["post_date"].get_string();
            }
            set {
                column_values["post_date"] = Petitconn.ValueUtils.new_string_value(value);
            }
        }

        public string post_date_gmt {
            owned get {
                return column_values["post_date_gmt"].get_string();
            }
            set {
                column_values["post_date_gmt"] = Petitconn.ValueUtils.new_string_value(value);
            }
        }

        public string post_content {
            owned get {
                return column_values["post_content"].get_string();
            }
            set {
                column_values["post_content"] = Petitconn.ValueUtils.new_string_value(value);
            }
        }

        public string post_title {
            owned get {
                return column_values["post_title"].get_string();
            }
            set {
                column_values["post_title"] = Petitconn.ValueUtils.new_string_value(value);
            }
        }

        public string post_excerpt {
            owned get {
                return column_values["post_excerpt"].get_string();
            }
            set {
                column_values["post_excerpt"] = Petitconn.ValueUtils.new_string_value(value);
            }
        }

        public string post_status {
            owned get {
                return column_values["post_status"].get_string();
            }
            set {
                column_values["post_status"] = Petitconn.ValueUtils.new_string_value(value);
            }
        }

        public string comment_status {
            owned get {
                return column_values["comment_status"].get_string();
            }
            set {
                column_values["comment_status"] = Petitconn.ValueUtils.new_string_value(value);
            }
        }

        public string ping_status {
            owned get {
                return column_values["ping_status"].get_string();
            }
            set {
                column_values["ping_status"] = Petitconn.ValueUtils.new_string_value(value);
            }
        }

        public string post_password {
            owned get {
                return column_values["post_password"].get_string();
            }
            set {
                column_values["post_password"] = Petitconn.ValueUtils.new_string_value(value);
            }
        }

        public string post_name {
            owned get {
                return column_values["post_name"].get_string();
            }
            set {
                column_values["post_name"] = Petitconn.ValueUtils.new_string_value(value);
            }
        }

        public string to_ping {
            owned get {
                return column_values["to_ping"].get_string();
            }
            set {
                column_values["to_ping"] = Petitconn.ValueUtils.new_string_value(value);
            }
        }

        public string pinged {
            owned get {
                return column_values["pinged"].get_string();
            }
            set {
                column_values["pinged"] = Petitconn.ValueUtils.new_string_value(value);
            }
        }

        public string post_modified {
            owned get {
                return column_values["post_modified"].get_string();
            }
            set {
                column_values["post_modified"] = Petitconn.ValueUtils.new_string_value(value);
            }
        }

        public string post_modified_gmt {
            owned get {
                return column_values["post_modified_gmt"].get_string();
            }
            set {
                column_values["post_modified_gmt"] = Petitconn.ValueUtils.new_string_value(value);
            }
        }

        public string post_content_filtered {
            owned get {
                return column_values["post_content_filtered"].get_string();
            }
            set {
                column_values["post_content_filtered"] = Petitconn.ValueUtils.new_string_value(value);
            }
        }

        public long post_parent {
            get {
                return column_values["post_parent"].get_long();
            }
            set {
                column_values["post_parent"] = Petitconn.ValueUtils.new_long_value(value);
            }
        }

        public string guid {
            owned get {
                return column_values["guid"].get_string();
            }
            set {
                column_values["guid"] = Petitconn.ValueUtils.new_string_value(value);
            }
        }

        public int menu_order {
            get {
                return column_values["menu_order"].get_int();
            }
            set {
                column_values["menu_order"] = Petitconn.ValueUtils.new_int_value(value);
            }
        }

        public string post_type {
            owned get {
                return column_values["post_type"].get_string();
            }
            set {
                column_values["post_type"] = Petitconn.ValueUtils.new_string_value(value);
            }
        }

        public string post_mime_type {
            owned get {
                return column_values["post_mime_type"].get_string();
            }
            set {
                column_values["post_mime_type"] = Petitconn.ValueUtils.new_string_value(value);
            }
        }

        public long comment_count {
            get {
                return column_values["comment_count"].get_long();
            }
            set {
                column_values["comment_count"] = Petitconn.ValueUtils.new_long_value(value);
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
