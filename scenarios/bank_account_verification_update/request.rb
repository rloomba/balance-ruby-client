<%= boiler_plate %>
verification = Balanced::Verification.find('<%=request['uri']%>')
<%= payload.each { |k,v| verification.k = v } %>
verification.save
