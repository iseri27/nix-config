function pkglt
    if test (count $argv) -ge 1
        if test "$argv[1]" = "-g"
            # 列出全局范围内的包
            nix-store --query --requisites /run/current-system/ | cut -d- -f2- | sort | uniq
            set n (nix-store --query --requisites /run/current-system/ | cut -d- -f2- | sort | uniq | wc -l)
            echo "Package number: $n in total"
        end
    else
        nix-env --query
        set n (nix-env --query | wc -l)
        echo "Package number: $n in total"
    end
end
