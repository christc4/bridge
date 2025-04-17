% for(c in `{ls -r $comments_dir/}) {
%	if(test -s $c/body) {
%	add=`{cat $c/user}

<div class="container">
%	if(test -e pub/users/$add/pfp.jpg) {
<img src=%(`{echo /pub/users/$add/pfp.jpg}%) style="height:55px;width:auto" class="image">
% 	}
%       if not {
<img src=%(`{echo /pub/users/plan9-faces.avif}%) style="height:55px;width:auto" class="image">
%        }
<div>By: <code><b>%(`{cat $c/user}%)</b> | %(`{cat $c/posted}%)</code>
<p>%(`{cat $c/body}%)</p>
</div>
</div>

% if(test -d $c/replies) {
<hr style="border: 1px dashed black;width:320px;text-align:left;margin-left:0">
<div class="replies"style="padding-left:160px;">
<div>By: <code><b>%(`{cat $c/replies/user}%)</b> | %(`{cat $c/replies/posted}%)</code>
<p>%(`{cat $c/replies/body}%)</p>
</div>
</div>

% }
<form action="" method="POST" enctype="multipart/form-data"><input type="hidden" name="bridge_reply_id" value="%(`{basename $c}%)" /><input type="submit" name="bridge_reply" value="Reply"></form>

%    if(check_user $conf_bridge_deletors) {
<form action="" method="POST" enctype="multipart/form-data"><input type="hidden" name="bridge_delete_id" value="%(`{basename $c}%)"><input type="submit" name="bridge_delete" value="Delete"></form>
%    }
<hr>
%    }
% }
