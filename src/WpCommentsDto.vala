using Petitconn;

namespace Wp4V {
    public class WpCommentsDto : ColumnSet {
        public long comment_id {
            get {
                return ValueUtils.get_long_or_zero(this["comment_ID"]);
            }
            set {
                this["comment_ID"] = ValueUtils.new_long_value(value);
            }
        }

        public long comment_post_id {
            get {
                return ValueUtils.get_long_or_zero(this["comment_post_ID"]);
            }
            set {
                this["comment_post_ID"] = ValueUtils.new_long_value(value);
            }
        }

        public string? comment_author {
            owned get {
                return ValueUtils.get_string_or_null(this["comment_author"]);
            }
            set {
                this["comment_author"] = ValueUtils.new_string_value(value);
            }
        }

        public string? comment_author_email {
            owned get {
                return ValueUtils.get_string_or_null(this["comment_author_email"]);
            }
            set {
                this["comment_author_email"] = ValueUtils.new_string_value(value);
            }
        }

        public string? comment_author_ip {
            owned get {
                return ValueUtils.get_string_or_null(this["comment_author_IP"]);
            }
            set {
                this["comment_author_IP"] = ValueUtils.new_string_value(value);
            }
        }

        public string? comment_date {
            owned get {
                return ValueUtils.get_string_or_null(this["comment_date"]);
            }
            set {
                this["comment_date"] = ValueUtils.new_string_value(value);
            }
        }

        public string? comment_date_gmt {
            owned get {
                return ValueUtils.get_string_or_null(this["comment_date_gmt"]);
            }
            set {
                this["comment_date_gmt"] = ValueUtils.new_string_value(value);
            }
        }

        public string? comment_content {
            owned get {
                return ValueUtils.get_string_or_null(this["comment_content"]);
            }
            set {
                this["comment_content"] = ValueUtils.new_string_value(value);
            }
        }

        public int comment_karma {
            get {
                return ValueUtils.get_int_or_zero(this["comment_karma"].get_int());
            }
            set {
                this["comment_karma"] = ValueUtils.new_int_value(value);
            }
        }

        public string? comment_approved {
            owned get {
                return ValueUtils.get_string_or_null(this["comment_approved"]);
            }
            set {
                this["comment_approved"] = ValueUtils.new_string_value(value);
            }
        }

        public string? comment_agent {
            owned get {
                return ValueUtils.get_string_or_null(this["comment_agent"]);
            }
            set {
                this["comment_agent"] = ValueUtils.new_string_value(value);
            }
        }

        public string? comment_type {
            owned get {
                return ValueUtils.get_string_or_null(this["comment_type"]);
            }
            set {
                this["comment_type"] = ValueUtils.new_string_value(value);
            }
        }

        public long comment_parent {
            get {
                return ValueUtils.get_long_or_zero(this["comment_parent"]);
            }
            set {
                this["comment_parent"] = ValueUtils.new_long_value(value);
            }
        }

        public long user_id {
            get {
                return ValueUtils.get_long_or_zero(this["comment_id"]);
            }
            set {
                this["comment_id"] = ValueUtils.new_long_value(value);
            }
        }

        public WpCommentsDto(bool use_default = false) {
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
