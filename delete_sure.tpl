<form action="" method="POST" enctype="multipart/form-data">

% if(~ 1 $#post_arg_bridge_delete_id ) {
<input type="hidden" name="bridge_delete_id" value="%($post_arg_bridge_delete_id"%) />
% }

<input type="submit" name="bridge_delete_yes" value="Are you sure you want to delete?" />
% a=`{pwd}^/sites/$SERVER_NAME/forum/_werc/comments/$post_arg_bridge_delete_id/body
% b=`{pwd}^/sites/$SERVER_NAME/forum/_werc/comments/$post_arg_bridge_delete_id/posted
% c=`{pwd}^/sites/$SERVER_NAME/forum/_werc/comments/$post_arg_bridge_delete_id/user
<br>
<p style="border: 2px solid black; padding: 10px;">
&raquo;
% cat $a
<br>
&raquo;
% cat $b
<br>
&raquo;
% cat $c
</form>
