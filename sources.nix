# This file was generated by Updater, please do not modify it manually.
{ fetchFromGitHub, fetchurl }:
let sums = with builtins; (fromJSON (readFile ./sums.json));
in {
  fastocr = {
    pname = "fastocr";
    version = "0.1.1";
    src = fetchurl {
      sha256 = sums.fastocr;
      url = "mirror://pypi/f/fastocr/fastocr-0.1.1.tar.gz";
    };
  };
  fcitx5-material-color = {
    pname = "fcitx5-material-color";
    version = "0.0.0.20201212";
    src = fetchFromGitHub {
      owner = "hosxy";
      repo = "fcitx5-material-color";
      rev = "c5f240591af52a041ff0fcde6fe245761c926f61";
      fetchSubmodules = true;
      sha256 = sums.fcitx5-material-color;
    };
  };
  fcitx5-nord = {
    pname = "fcitx5-nord";
    version = "0.0.0.20210116";
    src = fetchFromGitHub {
      owner = "tonyfettes";
      repo = "fcitx5-nord";
      rev = "28ada26f4e926a741d8645cb8fa9d9d8ab3a3b70";
      fetchSubmodules = true;
      sha256 = sums.fcitx5-nord;
    };
  };
  fcitx5-pinyin-moegirl = {
    pname = "fcitx5-pinyin-moegirl";
    version = "20210114";
    src = fetchurl {
      sha256 = sums.fcitx5-pinyin-moegirl;
      url = "https://github.com/outloudvi/mw2fcitx/releases/download/20210114/moegirl.dict";
    };
  };
  fcitx5-pinyin-zhwiki = {
    pname = "fcitx5-pinyin-zhwiki";
    version = "0.2.2";
    src = fetchurl {
      sha256 = sums.fcitx5-pinyin-zhwiki;
      url = "https://github.com/felixonmars/fcitx5-pinyin-zhwiki/releases/download/0.2.2/zhwiki-20210101.dict";
    };
  };
  feeluown-core = {
    pname = "feeluown-core";
    version = "3.7.5";
    src = fetchurl {
      sha256 = sums.feeluown-core;
      url = "mirror://pypi/f/feeluown/feeluown-3.7.5.tar.gz";
    };
  };
  feeluown-kuwo = {
    pname = "feeluown-kuwo";
    version = "0.1.2";
    src = fetchurl {
      sha256 = sums.feeluown-kuwo;
      url = "mirror://pypi/f/fuo_kuwo/fuo_kuwo-0.1.2.tar.gz";
    };
  };
  feeluown-local = {
    pname = "feeluown-local";
    version = "0.2.1";
    src = fetchurl {
      sha256 = sums.feeluown-local;
      url = "mirror://pypi/f/fuo_local/fuo_local-0.2.1.tar.gz";
    };
  };
  feeluown-netease = {
    pname = "feeluown-netease";
    version = "0.5";
    src = fetchurl {
      sha256 = sums.feeluown-netease;
      url = "mirror://pypi/f/fuo_netease/fuo_netease-0.5.tar.gz";
    };
  };
  feeluown-qqmusic = {
    pname = "feeluown-qqmusic";
    version = "0.3.1";
    src = fetchurl {
      sha256 = sums.feeluown-qqmusic;
      url = "mirror://pypi/f/fuo_qqmusic/fuo_qqmusic-0.3.1.tar.gz";
    };
  };
  feeluown-xiami = {
    pname = "feeluown-xiami";
    version = "0.2.4";
    src = fetchurl {
      sha256 = sums.feeluown-xiami;
      url = "mirror://pypi/f/fuo_xiami/fuo_xiami-0.2.4.tar.gz";
    };
  };
  new-pyside2 = {
    pname = "new-pyside2";
    version = "5.15.2";
    src = fetchurl {
      sha256 = sums.new-pyside2;
      url = "https://download.qt.io/official_releases/QtForPython/pyside2/PySide2-5.15.2-src/pyside-setup-opensource-src-5.15.2.tar.xz";
    };
  };
  pypinyin = {
    pname = "pypinyin";
    version = "0.40.0";
    src = fetchurl {
      sha256 = sums.pypinyin;
      url = "mirror://pypi/p/pypinyin/pypinyin-0.40.0.tar.gz";
    };
  };
  python-baidu-aip = {
    pname = "python-baidu-aip";
    version = "2.2.18.0";
    src = fetchurl {
      sha256 = sums.python-baidu-aip;
      url = "mirror://pypi/b/baidu-aip/baidu-aip-2.2.18.0.tar.gz";
    };
  };
  qasync = {
    pname = "qasync";
    version = "0.13.0";
    src = fetchurl {
      sha256 = sums.qasync;
      url = "mirror://pypi/q/qasync/qasync-0.13.0.tar.gz";
    };
  };
  qliveplayer = {
    pname = "qliveplayer";
    version = "3.21.1";
    src = fetchFromGitHub {
      owner = "IsoaSFlus";
      repo = "QLivePlayer";
      rev = "3.21.1";
      fetchSubmodules = true;
      sha256 = sums.qliveplayer;
    };
  };
}
