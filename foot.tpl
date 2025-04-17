<hr>
<code>Time set to GMT</code>
% notices_handler
<form action="" method="post">
    <textarea name="comment_text" id="comment_text" cols="80" rows="3" required>%($"saved_comment_text%)</textarea>
    <br>
    <input type="submit" name="bridge_post" value="Post a comment"> <br>

% if(~ $#logged_user 0) {
%   if(~ $#bridge_anon_comments 1) {
<!--    <label>User name for post:
        <input type="text" name="comment_user" value="%($"post_arg_comment_user%)">
    </label><br>
-->
    <label>In lower case, what country is west of england?
        <input type='text' name='ima_robot' />
    </label>
%   }
% }
</form>
