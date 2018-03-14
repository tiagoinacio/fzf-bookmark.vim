favorites() {
    _dir=`find $1 -type d -maxdepth $2`;
    for i in $_dir; do
        echo $i >> ~/.fzf_favorites
    done

    # unique values only
    sort -u ~/.fzf_favorites > ~/.fzf_favorites_backup
    rm ~/.fzf_favorites
    mv ~/.fzf_favorites_backup ~/.fzf_favorites
}
