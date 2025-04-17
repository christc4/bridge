<form action="" method="POST" enctype="multipart/form-data">
<input type="submit" name="bridge_reply_yes" value="Are you sure you want to reply?" />
% a=`{pwd}^/sites/$SERVER_NAME/forum/_werc/comments/$post_arg_bridge_reply_id/body
% b=`{pwd}^/sites/$SERVER_NAME/forum/_werc/comments/$post_arg_bridge_reply_id/posted
% c=`{pwd}^/sites/$SERVER_NAME/forum/_werc/comments/$post_arg_bridge_reply_id/user
<br>
<p style="border: 2px solid black; padding: 10px;">&raquo;
% cat $a
<br>&raquo;
% cat $b
<br>&raquo;
% cat $c
</form>
% notices_handler
<form action="" method="post">
<textarea name="comment_text" id="comment_reply" cols="80" rows="3" required>%($"saved_reply_text%)</textarea>
<br>
<input type="submit" name="bridge_post" value="Post your reply"><br>

</form>
