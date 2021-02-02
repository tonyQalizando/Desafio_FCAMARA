class Requests

  def cep_get(filter)
   URL.get('/' + filter.to_s + '/json')
  end

end