class Example < Grape::API

  desc 'testing pr'
  params do
    optional :long_greeting, type: Boolean, values: [true]
  end
  get '/hello' do
    if params[:long_greeting]
      {msg: 'hello, how do you do?'}
    else
      {msg: 'helllo from grape'}
    end
  end
end
