xml.instruct! :xml, :version=>'1.0'
xml.rss(:version=>"2.0"){
	xml.channel{
		xml.title("The Widget Manager Feed")
		xml.link("http://0.0.0.0/")
		xml.description("The latest widgets from Big Nerd Company.")
		xml.language('en-us')
			for widget in @widgets
				xml.item do
					xml.title(widget.name)
					xml.description("A widget names #{widget.name}.")
					xml.author("Widgets R Us")
					xml.pubDate(widget.created_at.strftime("%a, %d %b %Y %H: %M: %S: %z"))
					xml.link(url_for(:controller => 'widgets', 
										:action => 'show', 
										:id => widget.id, 
										:only_path => false))
					xml.guid(url_for(:controller => 'widgets', 
										:action => 'show', 
										:id => widget.id, 
										:only_path => false))
				end
			end
	}
}