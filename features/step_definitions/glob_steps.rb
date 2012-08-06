# encoding:utf-8

前提 /^ファイルが無いこと$/ do
end

ならば /^リストは空である$/ do
    @collector.empty?.should be_true
end

前提 /^JPGファイルが一つあること$/ do
    pending # express the regexp above with the code you wish you had

end

ならば /^リストには一つのJPGファイル名がある$/ do
    pending # express the regexp above with the code you wish you had
end

もし /^リスト化したなら$/ do
  @collector ||= Collector.new
  @collector.list(".")
end

ならば /^メッセージを出力する$/ do
    @collector.messages.should include("no files.")
end

ならば /^リストにはJPGファイル名が一つある$/ do
    pending # express the regexp above with the code you wish you had
end


class Collector
  def list(path_name)
    messages << "no files."
  end
  def empty?
    true
  end
  def messages
    @messages ||= []
  end
end
