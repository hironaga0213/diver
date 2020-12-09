$('#index_like_<%= @topic.id %>').html("<%= escape_javascript(render partial: "likes/like", locals: { topic: @topic }) %>");



//投稿一覧いいね差し替え
// $("#index_like_<%= @topic.id %>").html("<%= j(render partial: 'likes/like', locals: { topic: @topic}) %>");
//投稿詳細いいね差し替え
// $("#show_like_<%= @topic.id %>").html("<%= j(render partial: 'likes/like', locals: { topic: @topic}) %>");