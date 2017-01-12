#controller beat
  def destroy
    Beatnik.destroy(params['id'])
    redirect_to(:back)
  end



#views beatniks index.html.erb
<% @beatniks.each do |beatnik| %>


  <%= link_to 'Remove Beatnik', beatnik, method: :delete %><br>
  <%= link_to 'View/Edit Beatnik', beatnik, method: :get %><br>


<% end %>
