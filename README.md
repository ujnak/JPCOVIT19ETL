# COVID-19のオープンデータをOracle Databaseに取り込むOracle APEXアプリケーション

Code for Japanが作成している「新型コロナウイルス感染症対策に関するオープンデータ項目定義書」の陽性患者属性の定義にしたがって作成した表に、各都道府県が公開しているデータをOracle Databaseに取り込むOracle APEXのアプリケーション

## はじめに

陽性患者属性のデータは各都道府県がぞれぞれ異なったフォーマットで公開しています。これを同じ表に取り込むことで扱いを容易にします。Oracle DatabaseとOracle APEXが提供する機能を使用しています。

## 必要な環境

インターネットにつながるOracle DatabaseにOracle APEXがインストールされた環境が必要です。無料で取得可能な https://apex.oracle.com のワークスペースまたは、Oracle Cloudで提供されているAlways Freeとして永年無料で利用可能なインスタンスも使用できます。

## インストール方法

アプリケーションを見直して、作り直しました。今はseminar以下の４つのファイルをインポート/実行するだけでインストールが完了します。

### 表およびファンクションの作成

以下のファイルを実行し、必要な表とファンクションを生成します。
covid19_patients_ddl.sql

*表*
COVID19_MUNICIPALITIES
COVID19_PATIENTS

*タイプ*
T_TABLE_ROW
T_TABLE

*ファンクション*
convert_blob_to_clob
get_content_as_clob
parse_html_table_akita
parse_html_table_hiroshima
parse_html_table_ibaraki
parse_html_table_kagawa
parse_html_table_kagoshima
parse_html_table_kyoto1
parse_html_table_kyoto2
parse_html_table_miyazaki
parse_html_table_niigata
parse_html_table_saga
parse_html_table_tokushima
parse_html_table_tottori
parse_pdf_table_aichi
parse_pdf_table_chiba
parse_pdf_table_gunma
parse_pdf_table_okinawa

### シード・データのロード

Oracle APEXが提供しているSQLワークショップからデータ・ワークショップを起動し、データのロードを実行します。
covid19_municipalities.xmlを表COVID19_MUNICIPALITIESヘロードします。

### アプリケーションのインポート

covid19app.sqlをOracle APEXアプリケーションとしてインポートします。
ここまでで、データの取り込みはできるようになっています。
アプリケーションには、ユーザー名とパスワードが一致しているとログインできる簡易の認証を設定しています。

### REST APIのロード

SQLワークショップからRESTfulワークショップを実行し、以下のファイルをインポートします。
ORDS_REST_DBCLOUD_TEST_COVID-19\ Japan_2020_07_25.sql 

アプリケーションから正しく呼び出すには、アプリケーションの置換文字列として設定されているAPP_PATHを環境に合わせて更新する必要があります。

## Autonomous Databaseでの制限事項

栃木県、富山県、大阪府、奈良県、岡山県、長崎県、大分県はデータを取得するURLがhttp(httpsでない)ため、コールアウトができません。手作業でダウンロードして、データの更新画面からアップロードする必要があります。

## PDFのデータ取り込み

群馬県、千葉県、愛知県、沖縄県(現在はPDFでも一覧データは提供していない模様)はPDFによるデータが提供されています。
そのままでは読めないので、
https://convertio.co/ja/pdf-xlsx/
のサービスを使用してXLSX形式に変換した後、読み込むようにしています。

データのロードを実行すると、PDFのデータがキャッシュされます。
キャッシュされたPDFのデータをダウンロードし（都道府県のサイトから直接ダウンロードしてもよい）、Convertioのサービスを使ってXLSXへ変換します。
データの更新画面からフォームを開き、変換したファイルをアップロードします。このとき、ファイル名に.xlsxの拡張子が付くようにファイル名を変更します。

データのロードをボタンを押して実行します。

## 陽性患者属性の一覧が提供されていない都道府県

滋賀県、和歌山県、島根県（今は沖縄県も）は陽性患者属性の情報は一覧としては提供されていないので、事例ごとのファイルを確認して手作業で入力する必要がありました。また、広島県も詳細データはHTMLに表には含まれていないので、事例ごとのPDFからデータを入力する必要がありました。データの入力/編集は陽性患者一覧から行うことができます。

## 解説記事

以下のブログ記事として、作成したアプリケーションの解説をしています。
http://apexugj.blogspot.com/2020/07/data-loading-1.html

### 免責事項

それぞれの都道府県が公開している、新型コロナウイルス感染者の情報をできるだけそのまま取り込んでいますが、必ずしも一致していることは保証したしません。必ずデータの提供元である、各自治体の情報を参照してください。本データの利用によって生じた、あらゆる損害等に関して開発者は一切の責任を負いません。
