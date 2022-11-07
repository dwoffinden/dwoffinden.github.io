{
  activesupport = {
    dependencies = [ "concurrent-ruby" "i18n" "minitest" "tzinfo" ];
    groups = [ "default" ];
    platforms = [ ];
    source = {
      remotes = [ "https://rubygems.org" ];
      sha256 = "183az13i4fsm28d0l5xhbjpmcj3l1lxzcxlx8pi8zrbd933jwqd0";
      type = "gem";
    };
    version = "7.0.4";
  };
  addressable = {
    dependencies = [ "public_suffix" ];
    groups = [ "default" ];
    platforms = [ ];
    source = {
      remotes = [ "https://rubygems.org" ];
      sha256 = "1ypdmpdn20hxp5vwxz3zc04r5xcwqc25qszdlg41h8ghdqbllwmw";
      type = "gem";
    };
    version = "2.8.1";
  };
  colorator = {
    groups = [ "default" ];
    platforms = [ ];
    source = {
      remotes = [ "https://rubygems.org" ];
      sha256 = "0f7wvpam948cglrciyqd798gdc6z3cfijciavd0dfixgaypmvy72";
      type = "gem";
    };
    version = "1.1.0";
  };
  concurrent-ruby = {
    groups = [ "default" ];
    platforms = [ ];
    source = {
      remotes = [ "https://rubygems.org" ];
      sha256 = "0s4fpn3mqiizpmpy2a24k4v365pv75y50292r8ajrv4i1p5b2k14";
      type = "gem";
    };
    version = "1.1.10";
  };
  em-websocket = {
    dependencies = [ "eventmachine" "http_parser.rb" ];
    groups = [ "default" ];
    platforms = [ ];
    source = {
      remotes = [ "https://rubygems.org" ];
      sha256 = "1a66b0kjk6jx7pai9gc7i27zd0a128gy73nmas98gjz6wjyr4spm";
      type = "gem";
    };
    version = "0.5.3";
  };
  eventmachine = {
    groups = [ "default" ];
    platforms = [ ];
    source = {
      remotes = [ "https://rubygems.org" ];
      sha256 = "0wh9aqb0skz80fhfn66lbpr4f86ya2z5rx6gm5xlfhd05bj1ch4r";
      type = "gem";
    };
    version = "1.2.7";
  };
  faraday = {
    dependencies = [ "faraday-net_http" "ruby2_keywords" ];
    groups = [ "default" ];
    platforms = [ ];
    source = {
      remotes = [ "https://rubygems.org" ];
      sha256 = "1a6q8k82vfqyzlnrs6r6d82fyz5fminc8p57mr5xkdabs0m2y3mx";
      type = "gem";
    };
    version = "2.5.2";
  };
  faraday-net_http = {
    groups = [ "default" ];
    platforms = [ ];
    source = {
      remotes = [ "https://rubygems.org" ];
      sha256 = "0yicplzlh5da8pr64286zga3my86cjsb2y9dqlzsacpw8hbkmjvw";
      type = "gem";
    };
    version = "3.0.0";
  };
  ffi = {
    groups = [ "default" "jekyll_plugins" ];
    platforms = [ ];
    source = {
      remotes = [ "https://rubygems.org" ];
      sha256 = "1862ydmclzy1a0cjbvm8dz7847d9rch495ib0zb64y84d3xd4bkg";
      type = "gem";
    };
    version = "1.15.5";
  };
  forwardable-extended = {
    groups = [ "default" ];
    platforms = [ ];
    source = {
      remotes = [ "https://rubygems.org" ];
      sha256 = "15zcqfxfvsnprwm8agia85x64vjzr2w0xn9vxfnxzgcv8s699v0v";
      type = "gem";
    };
    version = "2.6.0";
  };
  gemoji = {
    groups = [ "default" ];
    platforms = [ ];
    source = {
      remotes = [ "https://rubygems.org" ];
      sha256 = "0vgklpmhdz98xayln5hhqv4ffdyrglzwdixkn5gsk9rj94pkymc0";
      type = "gem";
    };
    version = "3.0.1";
  };
  html-pipeline = {
    dependencies = [ "activesupport" "nokogiri" ];
    groups = [ "default" ];
    platforms = [ ];
    source = {
      remotes = [ "https://rubygems.org" ];
      sha256 = "0w14wk9j375dcvh7cr833jqqsd8974x51ds30m26cr1pwxy8xgbh";
      type = "gem";
    };
    version = "2.14.2";
  };
  "http_parser.rb" = {
    groups = [ "default" ];
    platforms = [ ];
    source = {
      remotes = [ "https://rubygems.org" ];
      sha256 = "1gj4fmls0mf52dlr928gaq0c0cb0m3aqa9kaa6l0ikl2zbqk42as";
      type = "gem";
    };
    version = "0.8.0";
  };
  i18n = {
    dependencies = [ "concurrent-ruby" ];
    groups = [ "default" ];
    platforms = [ ];
    source = {
      remotes = [ "https://rubygems.org" ];
      sha256 = "1vdcchz7jli1p0gnc669a7bj3q1fv09y9ppf0y3k0vb1jwdwrqwi";
      type = "gem";
    };
    version = "1.12.0";
  };
  jekyll = {
    dependencies = [ "addressable" "colorator" "em-websocket" "i18n" "jekyll-sass-converter" "jekyll-watch" "kramdown" "kramdown-parser-gfm" "liquid" "mercenary" "pathutil" "rouge" "safe_yaml" "terminal-table" "webrick" ];
    groups = [ "default" ];
    platforms = [ ];
    source = {
      remotes = [ "https://rubygems.org" ];
      sha256 = "0m866i41j7y5ipvl7f0vz82mypv5irqz9xxbx44s5pdsmi3dyawy";
      type = "gem";
    };
    version = "4.3.1";
  };
  jekyll-github-metadata = {
    dependencies = [ "jekyll" "octokit" ];
    groups = [ "default" ];
    platforms = [ ];
    source = {
      remotes = [ "https://rubygems.org" ];
      sha256 = "0vsc4dlz9fgb2hq19ia1dah5x63vya8d2h8ys4a44lhb958iz9pw";
      type = "gem";
    };
    version = "2.15.0";
  };
  jekyll-octicons = {
    dependencies = [ "jekyll" "octicons" ];
    groups = [ "default" ];
    platforms = [ ];
    source = {
      remotes = [ "https://rubygems.org" ];
      sha256 = "099l7q0lly99cirxcs2gd2pbygfqg8ki777wax9xs1kp0jy9wd6s";
      type = "gem";
    };
    version = "17.9.0";
  };
  jekyll-sass-converter = {
    dependencies = [ "sassc" ];
    groups = [ "jekyll_plugins" ];
    platforms = [ ];
    source = {
      remotes = [ "https://rubygems.org" ];
      sha256 = "077xkkkb592vg8kxdia9jwsaz1bc70lkpf4hdvazjqphn5hlz2bi";
      type = "gem";
    };
    version = "2.2.0";
  };
  jekyll-watch = {
    dependencies = [ "listen" ];
    groups = [ "default" ];
    platforms = [ ];
    source = {
      remotes = [ "https://rubygems.org" ];
      sha256 = "1qd7hy1kl87fl7l0frw5qbn22x7ayfzlv9a5ca1m59g0ym1ysi5w";
      type = "gem";
    };
    version = "2.2.1";
  };
  jemoji = {
    dependencies = [ "gemoji" "html-pipeline" "jekyll" ];
    groups = [ "default" ];
    platforms = [ ];
    source = {
      remotes = [ "https://rubygems.org" ];
      sha256 = "09sxbnrqz5vf6rxmh6lzism31gz2g3hw86ymg37r1ccknclv3cp9";
      type = "gem";
    };
    version = "0.12.0";
  };
  kramdown = {
    dependencies = [ "rexml" ];
    groups = [ "default" ];
    platforms = [ ];
    source = {
      remotes = [ "https://rubygems.org" ];
      sha256 = "1ic14hdcqxn821dvzki99zhmcy130yhv5fqfffkcf87asv5mnbmn";
      type = "gem";
    };
    version = "2.4.0";
  };
  kramdown-parser-gfm = {
    dependencies = [ "kramdown" ];
    groups = [ "default" ];
    platforms = [ ];
    source = {
      remotes = [ "https://rubygems.org" ];
      sha256 = "0a8pb3v951f4x7h968rqfsa19c8arz21zw1vaj42jza22rap8fgv";
      type = "gem";
    };
    version = "1.1.0";
  };
  liquid = {
    groups = [ "default" ];
    platforms = [ ];
    source = {
      remotes = [ "https://rubygems.org" ];
      sha256 = "0zhg5ha8zy8zw9qr3fl4wgk4r5940n4128xm2pn4shpbzdbsj5by";
      type = "gem";
    };
    version = "4.0.3";
  };
  listen = {
    dependencies = [ "rb-fsevent" "rb-inotify" ];
    groups = [ "default" ];
    platforms = [ ];
    source = {
      remotes = [ "https://rubygems.org" ];
      sha256 = "0agybr37wpjv3xy4ipcmsvsibgdgphzrwbvcj4vfiykpmakwm01v";
      type = "gem";
    };
    version = "3.7.1";
  };
  mercenary = {
    groups = [ "default" ];
    platforms = [ ];
    source = {
      remotes = [ "https://rubygems.org" ];
      sha256 = "0f2i827w4lmsizrxixsrv2ssa3gk1b7lmqh8brk8ijmdb551wnmj";
      type = "gem";
    };
    version = "0.4.0";
  };
  mini_portile2 = {
    groups = [ "default" ];
    platforms = [ ];
    source = {
      remotes = [ "https://rubygems.org" ];
      sha256 = "0rapl1sfmfi3bfr68da4ca16yhc0pp93vjwkj7y3rdqrzy3b41hy";
      type = "gem";
    };
    version = "2.8.0";
  };
  minitest = {
    groups = [ "default" ];
    platforms = [ ];
    source = {
      remotes = [ "https://rubygems.org" ];
      sha256 = "0516ypqlx0mlcfn5xh7qppxqc3xndn1fnadxawa8wld5dkcimy30";
      type = "gem";
    };
    version = "5.16.3";
  };
  nokogiri = {
    dependencies = [ "mini_portile2" "racc" ];
    groups = [ "default" ];
    platforms = [ ];
    source = {
      remotes = [ "https://rubygems.org" ];
      sha256 = "0cam1455nmi3fzzpa9ixn2hsim10fbprmj62ajpd6d02mwdprwwn";
      type = "gem";
    };
    version = "1.13.9";
  };
  octicons = {
    groups = [ "default" ];
    platforms = [ ];
    source = {
      remotes = [ "https://rubygems.org" ];
      sha256 = "15nikxpm61ymqyj3jqsfclvbirf71b74xs1zqx93vh4zy1zm9f4n";
      type = "gem";
    };
    version = "17.9.0";
  };
  octokit = {
    dependencies = [ "faraday" "sawyer" ];
    groups = [ "default" ];
    platforms = [ ];
    source = {
      remotes = [ "https://rubygems.org" ];
      sha256 = "15lvy06h276jryxg19258b2yqaykf0567sp0n16yipywhbp94860";
      type = "gem";
    };
    version = "4.25.1";
  };
  pathutil = {
    dependencies = [ "forwardable-extended" ];
    groups = [ "default" ];
    platforms = [ ];
    source = {
      remotes = [ "https://rubygems.org" ];
      sha256 = "12fm93ljw9fbxmv2krki5k5wkvr7560qy8p4spvb9jiiaqv78fz4";
      type = "gem";
    };
    version = "0.16.2";
  };
  public_suffix = {
    groups = [ "default" ];
    platforms = [ ];
    source = {
      remotes = [ "https://rubygems.org" ];
      sha256 = "0sqw1zls6227bgq38sxb2hs8nkdz4hn1zivs27mjbniswfy4zvi6";
      type = "gem";
    };
    version = "5.0.0";
  };
  racc = {
    groups = [ "default" ];
    platforms = [ ];
    source = {
      remotes = [ "https://rubygems.org" ];
      sha256 = "0la56m0z26j3mfn1a9lf2l03qx1xifanndf9p3vx1azf6sqy7v9d";
      type = "gem";
    };
    version = "1.6.0";
  };
  rb-fsevent = {
    groups = [ "default" ];
    platforms = [ ];
    source = {
      remotes = [ "https://rubygems.org" ];
      sha256 = "1zmf31rnpm8553lqwibvv3kkx0v7majm1f341xbxc0bk5sbhp423";
      type = "gem";
    };
    version = "0.11.2";
  };
  rb-inotify = {
    dependencies = [ "ffi" ];
    groups = [ "default" ];
    platforms = [ ];
    source = {
      remotes = [ "https://rubygems.org" ];
      sha256 = "1jm76h8f8hji38z3ggf4bzi8vps6p7sagxn3ab57qc0xyga64005";
      type = "gem";
    };
    version = "0.10.1";
  };
  rexml = {
    groups = [ "default" ];
    platforms = [ ];
    source = {
      remotes = [ "https://rubygems.org" ];
      sha256 = "08ximcyfjy94pm1rhcx04ny1vx2sk0x4y185gzn86yfsbzwkng53";
      type = "gem";
    };
    version = "3.2.5";
  };
  rouge = {
    groups = [ "default" ];
    platforms = [ ];
    source = {
      remotes = [ "https://rubygems.org" ];
      sha256 = "066w2wf3mwkzynz9h7qqvvr0w6rq6q45ngjfh9z0s08ny2gpdbmq";
      type = "gem";
    };
    version = "4.0.0";
  };
  ruby2_keywords = {
    groups = [ "default" ];
    platforms = [ ];
    source = {
      remotes = [ "https://rubygems.org" ];
      sha256 = "1vz322p8n39hz3b4a9gkmz9y7a5jaz41zrm2ywf31dvkqm03glgz";
      type = "gem";
    };
    version = "0.0.5";
  };
  safe_yaml = {
    groups = [ "default" ];
    platforms = [ ];
    source = {
      remotes = [ "https://rubygems.org" ];
      sha256 = "0j7qv63p0vqcd838i2iy2f76c3dgwzkiz1d1xkg7n0pbnxj2vb56";
      type = "gem";
    };
    version = "1.0.5";
  };
  sassc = {
    dependencies = [ "ffi" ];
    groups = [ "default" "jekyll_plugins" ];
    platforms = [ ];
    source = {
      remotes = [ "https://rubygems.org" ];
      sha256 = "0gpqv48xhl8mb8qqhcifcp0pixn206a7imc07g48armklfqa4q2c";
      type = "gem";
    };
    version = "2.4.0";
  };
  sawyer = {
    dependencies = [ "addressable" "faraday" ];
    groups = [ "default" ];
    platforms = [ ];
    source = {
      remotes = [ "https://rubygems.org" ];
      sha256 = "1jks1qjbmqm8f9kvwa81vqj39avaj9wdnzc531xm29a55bb74fps";
      type = "gem";
    };
    version = "0.9.2";
  };
  terminal-table = {
    dependencies = [ "unicode-display_width" ];
    groups = [ "default" ];
    platforms = [ ];
    source = {
      remotes = [ "https://rubygems.org" ];
      sha256 = "14dfmfjppmng5hwj7c5ka6qdapawm3h6k9lhn8zj001ybypvclgr";
      type = "gem";
    };
    version = "3.0.2";
  };
  tzinfo = {
    dependencies = [ "concurrent-ruby" ];
    groups = [ "default" ];
    platforms = [ ];
    source = {
      remotes = [ "https://rubygems.org" ];
      sha256 = "0rx114mpqnw2k4h98vc0rs0x0bmf0img84yh8mkkjkal07cjydf5";
      type = "gem";
    };
    version = "2.0.5";
  };
  unicode-display_width = {
    groups = [ "default" ];
    platforms = [ ];
    source = {
      remotes = [ "https://rubygems.org" ];
      sha256 = "0ra70s8prfacpqwj5v2mqn1rbfz6xds3n9nsr9cwzs3z2c0wm5j7";
      type = "gem";
    };
    version = "2.3.0";
  };
  webrick = {
    groups = [ "default" ];
    platforms = [ ];
    source = {
      remotes = [ "https://rubygems.org" ];
      sha256 = "1d4cvgmxhfczxiq5fr534lmizkhigd15bsx5719r5ds7k7ivisc7";
      type = "gem";
    };
    version = "1.7.0";
  };
}
