Dado(/^que eu tenho um API para consultar CEP's$/) do
  @url = ("http://correiosapi.apphb.com/cep")
end

Quando(/^informo o CEP "([^"]*)"$/) do |cep|
    puts "HTTParty.get("+@url+"/"+cep+")"
    @response = HTTParty.get(@url+"/"+cep)
end

Entao(/^deve retornar a consulta com os dados do logradouro$/) do
  puts @response
  expect(@response.code).to eq 200
 end

Então(/^deve retornar a mensagem de endereço não encontrado$/) do
  puts @response
  expect(@response.code).to eq 404
end
