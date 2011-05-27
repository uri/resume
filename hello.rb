require 'sinatra'

helpers do
  
  
  def link (name,url)
    @output = ""
    @output <<"<p class='link'><a href='http://#{url}' target='_blank'>#{name}</a></p>"
    @output
  end
  
  def image (name,url,size=100,float=nil)
    @output = ""
    
    if (float.nil?)
      @output << "<p>"
    else
      @output << "<p style=' display:inline;'>"
    end
    
    @output << "<a href='/images/#{url}' target='_blank'>"
    @output << "<img width='#{size}%' src='/images/#{url}' alt='#{name}' title='#{name}'>"
    @output << "</a>"
    @output << "</p>"
    @output
  end    

  
  
end


get '/' do
  @title = "Uri's Home"
  erb :index
end

get '/resume' do
  @title = "Uri's Resume"
  erb :resume
end

get '/projects' do
  @title = "Uri's Projects"
  erb :projects
end

get '/portfolio' do
  @title = "Uri's Portfolio"
  erb :portfolio
end

get '/contact' do
  @title = "Contact"
  @header = @title
  erb :contact
end

get '/pages' do
  @title = "Pages"
  @header = "Pages"
  erb :pages
end

get '/pages/mac' do
  @title = "Windows to Mac"
  @header = "Coming to Mac from Windows"
  erb :mac
end





