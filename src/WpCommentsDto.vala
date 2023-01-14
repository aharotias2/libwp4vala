namespace Wp4V {
    public class WpCommentsDto : Petitconn.ColumnSet {
        public long comment_id {
            get {
                return this["comment_ID"].get_long();
            }
            set {
                this["comment_ID"] = Petitconn.ValueUtils.new_long_value(value);
            }
        }

        public long comment_post_id {
            get {
                return this["comment_post_ID"].get_long();
            }
            set {
                this["comment_post_ID"] = Petitconn.ValueUtils.new_long_value(value);
            }
        }

        public string comment_author {
            owned get {
                return this["comment_author"].get_string();
            }
            set {
                this["comment_author"] = Petitconn.ValueUtils.new_string_value(value);
            }
        }

        public string comment_author_email {
            owned get {
                return this["comment_author_email"].get_string();
            }
            set {
                this["comment_author_email"] = Petitconn.ValueUtils.new_string_value(value);
            }
        }

        public string comment_author_ip {
            owned get {
                return this["comment_author_IP"].get_string();
            }
            set {
                this["comment_author_IP"] = Petitconn.ValueUtils.new_string_value(value);
            }
        }

        public string comment_date {
            owned get {
                return this["comment_date"].get_string();
            }
            set {
                this["comment_date"] = Petitconn.ValueUtils.new_string_value(value);
            }
        }

        public string comment_date_gmt {
            owned get {
                return this["comment_date_gmt"].get_string();
            }
            set {
                this["comment_date_gmt"] = Petitconn.ValueUtils.new_string_value(value);
            }
        }

        public string comment_content {
            owned get {
                return this["comment_content"].get_string();
            }
            set {
                this["comment_content"] = Petitconn.ValueUtils.new_string_value(value);
            }
        }

        public int comment_karma {
            get {
                return this["comment_karma"].get_int();
            }
            set {
                this["comment_karma"] = Petitconn.ValueUtils.new_int_value(value);
            }
        }

        public string comment_approved {
            owned get {
                return this["comment_approved"].get_string();
            }
            set {
                this["comment_approved"] = Petitconn.ValueUtils.new_string_value(value);
            }
        }

        public string comment_agent {
            owned get {
                return this["comment_agent"].get_string();
            }
            set {
                this["comment_agent"] = Petitconn.ValueUtils.new_string_value(value);
            }
        }

        public string comment_type {
            owned get {
                return this["comment_type"].get_string();
            }
            set {
                this["comment_type"] = Petitconn.ValueUtils.new_string_value(value);
            }
        }

        public long comment_parent {
            get {
                return this["comment_parent"].get_long();
            }
            set {
                this["comment_parent"] = Petitconn.ValueUtils.new_long_value(value);
            }
        }

        public long user_id {
            get {
                return this["comment_id"].get_long();
            }
            set {
                this["comment_id"] = Petitconn.ValueUtils.new_long_value(value);
            }
        }

        public WpCommentsDto(bool use_default = true) {
            base("wp_comments",
                "comment_ID", Type.LONG,
                "comment_post_ID", Type.LONG,
                "comment_author", Type.STRING,
                "comment_author_email", Type.STRING,
                "comment_author_url", Type.STRING,
                "comment_author_IP", Type.STRING,
                "comment_date", Type.STRING,
                "comment_date_gmt", Type.STRING,
                "comment_content", Type.STRING,
                "comment_karma", Type.STRING,
                "comment_approved", Type.STRING,
                "comment_agent", Type.STRING,
                "comment_type", Type.STRING,
                "comment_parent", Type.LONG,
                "user_id", Type.LONG
            );
            if (use_default) {
                comment_id = 0;
                comment_post_id = 0;
                comment_author = "";
                comment_author_email = "";
                comment_author_ip = "";
                comment_date = "0000-00-00 00:00:00";
                comment_date_gmt = "0000-00-00 00:00:00";
                comment_content = "";
                comment_karma = 0;
                comment_approved = "1";
                comment_agent = "";
                comment_type = "comment"; 
                comment_parent = 0;
                user_id = 0;
            }
        }
    }
}
