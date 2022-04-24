#!/usr/bin/env bash
#
# --suppress-broken code "-1" steht für links die durch robots.txt untersagt sind.
#

readonly script_path="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
readonly result_timestamp=$(date "+%Y_%m_%d_%H_%M_%S")
readonly result_dir=${script_path}/results
readonly result_file=${result_dir}/results_${result_timestamp}.html

if [[ ! -d ${result_dir} ]]; then
  mkdir ${result_dir}
fi

docker run f800r/checklink:latest \
  --html \
  --broken \
  --suppress-broken -1:https://stats.wp.com/w.js?63 \
  --suppress-broken -1:https://pixel.wp.com/b.gif?v=noscript \
  --suppress-broken -1:http://www.aboutads.info/choices/ \
  --suppress-broken -1:https://youtu.be/FhUUmTEfBkc \
  --suppress-broken -1:https://github.com/oberwiesenfeld \
  --suppress-broken -1:"https://public-api.wordpress.com/oembed/?format=json&url=https%3A%2F%2Foberwiesenfeld.tech%2Fimpressum%2F&for=wpcom-auto-discovery" \
  --suppress-broken -1:"https://public-api.wordpress.com/oembed/?format=xml&url=https%3A%2F%2Foberwiesenfeld.tech%2Fimpressum%2F&for=wpcom-auto-discovery" \
  --suppress-broken -1:"https://public-api.wordpress.com/oembed/?format=json&url=https%3A%2F%2Foberwiesenfeld.tech%2F2018%2F10%2F12%2Fcheckliste-fuer-die-motorradreise%2F&for=wpcom-auto-discovery" \
  --suppress-broken -1:"https://public-api.wordpress.com/oembed/?format=xml&url=https%3A%2F%2Foberwiesenfeld.tech%2F2018%2F10%2F12%2Fcheckliste-fuer-die-motorradreise%2F&for=wpcom-auto-discovery" \
  --suppress-broken -1:"https://public-api.wordpress.com/oembed/?format=json&url=https%3A%2F%2Foberwiesenfeld.tech%2Fliteraturverzeichnis%2F&for=wpcom-auto-discovery" \
  --suppress-broken -1:"https://public-api.wordpress.com/oembed/?format=xml&url=https%3A%2F%2Foberwiesenfeld.tech%2Fliteraturverzeichnis%2F&for=wpcom-auto-discovery" \
  --suppress-broken -1:"https://public-api.wordpress.com/oembed/?format=json&url=https%3A%2F%2Foberwiesenfeld.tech%2F2018%2F03%2F09%2Fin-muenchen-am-oberwiesenfeld%2F&for=wpcom-auto-discovery" \
  --suppress-broken -1:"https://public-api.wordpress.com/oembed/?format=xml&url=https%3A%2F%2Foberwiesenfeld.tech%2F2018%2F03%2F09%2Fin-muenchen-am-oberwiesenfeld%2F&for=wpcom-auto-discovery" \
  --suppress-broken -1:"https://public-api.wordpress.com/oembed/?format=json&url=https%3A%2F%2Foberwiesenfeld.tech%2Fdatenschutz%2F&for=wpcom-auto-discovery" \
  --suppress-broken -1:"https://public-api.wordpress.com/oembed/?format=xml&url=https%3A%2F%2Foberwiesenfeld.tech%2Fdatenschutz%2F&for=wpcom-auto-discovery" \
  --suppress-broken -1:"https://public-api.wordpress.com/oembed/?format=json&url=https%3A%2F%2Foberwiesenfeld.tech%2F2018%2F06%2F14%2Fkolbenringe%2F&for=wpcom-auto-discovery" \
  --suppress-broken -1:"https://public-api.wordpress.com/oembed/?format=xml&url=https%3A%2F%2Foberwiesenfeld.tech%2F2018%2F06%2F14%2Fkolbenringe%2F&for=wpcom-auto-discovery" \
  --suppress-broken -1:"https://public-api.wordpress.com/oembed/?format=json&url=https%3A%2F%2Foberwiesenfeld.tech%2F2019%2F04%2F22%2Freitwagen%2F&for=wpcom-auto-discovery" \
  --suppress-broken -1:"https://public-api.wordpress.com/oembed/?format=xml&url=https%3A%2F%2Foberwiesenfeld.tech%2F2019%2F04%2F22%2Freitwagen%2F&for=wpcom-auto-discovery" \
  --suppress-broken -1:"https://public-api.wordpress.com/oembed/?format=json&url=https%3A%2F%2Foberwiesenfeld.tech%2F2019%2F06%2F12%2Fbmw-r-18%2F&for=wpcom-auto-discovery" \
  --suppress-broken -1:"https://public-api.wordpress.com/oembed/?format=xml&url=https%3A%2F%2Foberwiesenfeld.tech%2F2019%2F06%2F12%2Fbmw-r-18%2F&for=wpcom-auto-discovery" \
  --suppress-broken -1:"https://public-api.wordpress.com/oembed/?format=json&url=https%3A%2F%2Foberwiesenfeld.tech%2F2019%2F11%2F17%2Fkennzeichen%2F&for=wpcom-auto-discovery" \
  --suppress-broken -1:"https://public-api.wordpress.com/oembed/?format=xml&url=https%3A%2F%2Foberwiesenfeld.tech%2F2019%2F11%2F17%2Fkennzeichen%2F&for=wpcom-auto-discovery" \
  --suppress-broken -1:"https://public-api.wordpress.com/oembed/?format=json&url=https%3A%2F%2Foberwiesenfeld.tech%2F2021%2F04%2F05%2Fm2b15%2F&for=wpcom-auto-discovery" \
  --suppress-broken -1:"https://public-api.wordpress.com/oembed/?format=xml&url=https%3A%2F%2Foberwiesenfeld.tech%2F2021%2F04%2F05%2Fm2b15%2F&for=wpcom-auto-discovery" \
  --suppress-broken -1:"https://public-api.wordpress.com/oembed/?format=xml&url=https%3A%2F%2Foberwiesenfeld.tech%2F2020%2F12%2F28%2Fkennwerte%2F&for=wpcom-auto-discovery" \
  --suppress-broken -1:"https://public-api.wordpress.com/oembed/?format=json&url=https%3A%2F%2Foberwiesenfeld.tech%2F2020%2F12%2F28%2Fkennwerte%2F&for=wpcom-auto-discovery" \
  --suppress-broken -1:"https://oberwiesenfeld.tech/2019/06/12/bmw-r-18/?share=facebook" \
  --suppress-broken -1:"https://oberwiesenfeld.tech/2019/11/17/kennzeichen/?share=facebook" \
  --suppress-broken -1:"https://www.youtube.com/results?search_query=%23ABavarianSoulstory" \
  --suppress-broken -1:"http://instagram.com/about/legal/privacy/" \
  --suppress-broken -1:"https://subscribe.wordpress.com/" \
  --suppress-broken 403:"https://vimeo.com/privacy" \
  --suppress-broken 404:"https://cdn.ampproject.org/" \
  --suppress-broken 405:"https://www.instagram.com/unsupportedbrowser/" \
  --suppress-broken 405:"https://oberwiesenfeld.tech/xmlrpc.php" \
  --suppress-fragment "https://widgets.wp.com/likes/master.html?ver=20200826#ver=20200826&lang=de" \
  --suppress-fragment "https://books.google.de/books?id=Fd6sBgAAQBAJ&lpg=PA6&hl=de&pg=PP1#v=onepage&q&f=false" \
  --depth 2 \
  --location "https://oberwiesenfeld.tech" \
  --exclude ".*https:\/\/www.instagram.com\/unsupportedbrowser\/" \
  --exclude ".*https:\/\/www.facebook.com\/unsupportedbrowser\/" \
  --exclude ".*http:\/\/instagram.com\/about\/legal\/privacy\/" \
  --exclude ".*https:\/\/public-api.wordpress.com\/oembed.*" \
  --exclude ".*https:\/\/widgets.wp.com\/likes\/master.html.*" \
  --exclude ".*http:\/\/instagram.com\/about\/legal\/privacy\/.*" \
  --exclude ".*https:\/\/r-login.wordpress.com\/remote-login.*" \
  --exclude ".*data:image.*" \
  --exclude ".*subscribe.wordpress.com." \
  --exclude ".*oberwiesenfeld.wordpress.com.wp-admin.*" \
  --exclude-docs ".*subscribe.wordpress.com." \
  --exclude-docs ".*oberwiesenfeld.wordpress.com.wp-admin.*" \
  --exclude-docs ".*https:\/\/public-api.wordpress.com\/oembed.*" \
  --exclude-docs ".*https:\/\/widgets.wp.com\/likes\/master.html.*" \
  --exclude-docs ".*http:\/\/instagram.com\/about\/legal\/privacy\/.*" \
  --exclude-docs ".*https:\/\/r-login.wordpress.com\/remote-login.*" \
  https://oberwiesenfeld.tech | \
  tee ${result_file}

readonly number_of_broken_links=$(grep -i "broken links" ${result_file}|wc -l|tr -d '[:space:]')
echo "broken-links=${number_of_broken_links}"

if [[ "${OSTYPE}" == *darwin* ]]; then
  open ${result_file}
fi

if [[ "${number_of_broken_links}" > "0" ]]; then
  exit 1
fi

exit 0
